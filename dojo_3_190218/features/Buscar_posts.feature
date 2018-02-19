#language: pt
#utf-8

@get
Funcionalidade: Buscar posts existentes
    Como uma aplicação cliente
    Desejo buscar os posts cadastrados
    Para listá-los em uma determinada tela

    Contexto: Ter credenciais de acesso a API

    @buscar_todos
    Cenário: Buscar todos os posts
        Quando buscar todos os posts do meu blog através da API
        Então a resposta trará um total de 100 registros
            E a resposta conterá a mensagem "OK"
            E o status code da resposta será 200

    @buscar_post_especifico
    Cenário: Buscar detalhes de um post específico
        Quando buscar todos pelo post "12" do meu blog através da API
        Então a resposta conterá a mensagem "OK"
            E o status code da resposta será 200
            E as propriedades e valores contidos na resposta serão:
                |   propriedade |   valor                                   |
                |   id          |   12                                      |
                |   userId      |   2                                       |
                |   title       |   in quibusdam tempore odit est dolorem   |
    
    Cenário: Buscar detalhes de um post inexistente
        Quando buscar todos pelo post "9999" do meu blog através da API
        Então a resposta conterá a mensagem "Not Found"
            E o status code da resposta será 404
