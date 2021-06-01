//
//  ContentView.swift
//  Issues
//
//  Created by Rodrigo Cavalcanti on 01/06/21.
//

import SwiftUI

//titulo do issue, estado -: titulo do issue, descrição, avatar do usuario, data, botão que abre link
struct Result: Codable, Identifiable {
    struct User: Codable {
        var avatar_url: URL
    }
    var title: String
    var state: String
    var body: String
    var html_url: URL
    var id: Int
    var user: User
}

struct ContentView: View {
    @State private var results = [Result]()

    var body: some View {
        NavigationView {
            List(results) { item in
                NavigationLink(destination: InformacaoView(result: item), label: {
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.headline)
                        Text(item.state == "open" ? "ABERTO" : "FECHADO")
                    }
                })
            }
            .navigationTitle("Issues")
        }
        .onAppear(perform: loadData)
    }
    
    func loadData() {
        //etapa 1
        guard let url = URL(string: "https://api.github.com/repos/apple/swift/issues") else {
            print("URL Inválido")
            return
        }
        //etapa 2
        let request = URLRequest(url: url)
        //etapa 3
        URLSession.shared.dataTask(with: request) { data, response, error in
            // etapa 4
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([Result].self, from: data) {
                    // we have good data – go back to the main thread
                    DispatchQueue.main.async {
                        // update our UI
                        self.results = decodedResponse
                    }

                    // everything is good, so we can exit
                    return
                }
            }

            // if we're still here it means there was a problem
            print("Fetch failed: \(error?.localizedDescription ?? "Erro desconhecido")")
        }.resume()
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
