#language: pt
#utf-8

Funcionalidade: Criar comentários
    Como uma aplicação cliente
    Desejo criar comentários
    Para que haja mais destaque nos conteúdo do blog

    Contexto: Ter credenciais de acesso a API

    @criar_comentario
    Cenário: Criar um novo comentário
        Quando eu cadastrar um novo comentário no blog usando os dados abaixo:
            |   name    |   Teste de Criação de Comentário              |
            |   email   |   teste@inmetrics.com.br                      |
            |   body    |   Testando a criação de um novo comentário    |
        Então a resposta conterá a mensagem "Created"
            E o status code da resposta será 201