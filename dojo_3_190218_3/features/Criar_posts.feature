# language: pt

@post @API
Funcionalidade: Criar posts
    Como uma aplicação cliente
    Desejo criar posts
    Para que haja conteúdo novo no blog

    Contexto: Ter credenciais de acesso a API

    Cenário: Criar um novo post
        Quando cadastrar um novo post no blog usando os dados abaixo:
            |   user Id |   2                               |
            |   title   |   0 maravilhoso mundo dos testes  |
            |   body    |   0 maravilhoso mundo das APIs    |
        Então a resposta conterá a mensagem "Created"
            E o status code da resposta será 201
