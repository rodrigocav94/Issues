//
//  InformacaoView.swift
//  Issues
//
//  Created by Rodrigo Cavalcanti on 01/06/21.
//

import SwiftUI
import URLImage

//titulo do issue, descrição, avatar do usuario, data, botão que abre link
struct InformacaoView: View {
    var result: Result
    var body: some View {
        Form {
            Section(header: Text("Título:")) {
                Text(result.title)
                    .bold()
            }
            Section(header: Text("Descrição:")) {
                Text(result.body)
            }
            Section(header: Text("Usuário")) {
                URLImage(result.user.avatar_url) { image in
                    image
                        .resizable()
                        .scaledToFit()
                }
            }
            Section {
                Link("Acessar página", destination: result.html_url)
            }
        }
        .navigationBarTitle(result.title, displayMode: .inline)
    }
}

struct InformacaoView_Previews: PreviewProvider {
    static var previews: some View {
        InformacaoView(result: Result(title: "Teste", state: "ABERTO", body: "Descrição", html_url: URL(string: "https://avatars.githubusercontent.com/u/52841859?v=4")!, id: 123, user: Result.User(avatar_url: URL(string: "https://avatars.githubusercontent.com/u/52841859?v=4")!)))
    }
}
