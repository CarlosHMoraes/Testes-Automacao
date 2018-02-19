#language: pt
#utf-8

@delete @API
Funcionalidade: deletar posts existenets
    Como uma aplicação cliente
    Desejo deletar posts
    Para não apresentá-los aos demais usuários

    Contexto: Ter credenciais de acesso a API

    Cenário: Deletar um post
        Quando excluir o post número "34" do blog
        Então a resposta conterá a mensagem "OK"
            E o status code da resposta será 200