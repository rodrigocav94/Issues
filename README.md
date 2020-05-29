# Prova de iOS
## Objetivo

Voc� deve desenvolver uma aplica��o iOS em Swift que consuma a API do Github 
Issues ( https://developer.github.com/v3/issues/ ), usando como base o 
reposit�rio do Swift ( https://github.com/apple/swift ).

## O aplicativo deve conter

* Uma tela com a lista de issues do reposit�rio
( https://api.github.com/repos/apple/swift/issues ). Cada item da lista deve
conter os seguintes elementos:
    * T�tulo do issue
    * Estado do issue (ABERTO, FECHADO)
* Uma tela mostrando os detalhes do issue que foi selecionado na lista, que deve
conter os seguintes elementos:
    * T�tulo do issue
    * Texto de Descri��o do issue
    * Avatar do usu�rio que criou a issue
    * Data de cria��o
    * Um bot�o que abre o browser com o link issue no site do github

## Requisitos obrigat�rios

* Swift
* Testes unit�rios

## Sugest�es de constru��o:
* Projeto em MVP ou MVVM
* View Code

## Sugest�es de frameworks:
* Para testes unit�rios: Quick, Nimble, Cuckoo e OHHTTPStubs
* Uso dos Frameworks Alamofire/Moya

## Pontos de avalia��o

* Como voc� organiza seus arquivos, m�todos, nomeia vari�veis, faz separa��es de 
responsabilidade, e lida com o seu c�digo como um todo
* Tratamento das requisi��es: como voc� trata os dados recebidos, erros de
requisi��o e verifica��o de conex�o de internet
* Layout: Como voc� constr�i os layouts, tratamento e disposi��o dos
componentes da view
* Testes unit�rios: Como voc� daria cobertura de partes importantes do projeto
* Testes de UI s�o um adicional

Seja cuidadoso e utilize boas pr�ticas e padr�es.
Siga o guideline da Apple, bem como respeite as boas pr�ticas de Swift.
Codifique como voc� gostaria de trabalhar.
