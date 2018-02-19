#language: pt
#utf-8

Funcionalidade: Alterar comentários
    Eu como sistema intermediário
    Quero fazer a requisição de alteração de um comentário
    Para corrigir um comentário postado

    @alterar_comentario @put
    Cenário: Alterar comentários
        Dado que eu tenha acesso ao webservice
        Quando eu fizer a requisição de alteração de um comentário
        Então valido o código de resposta para alteração esperado