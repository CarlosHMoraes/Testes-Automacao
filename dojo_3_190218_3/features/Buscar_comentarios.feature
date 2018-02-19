#language: pt
#utf-8

Funcionalidade: Buscar todos os comentarios
    Como um aplicação cliente
    Desejo buscar os comentários cadastrados
    Para listá-los em uma determinada tela

    @busca_comentarios
    Cenário: Buscar todos os comentários
        Quando eu buscar todos os comentários através da API
        Então a resposta trará um total de 500 registros
            E a resposta conterá a mensagem "OK"
            E o status code da resposta será 200

    @busca_comentarios_especifico
    Cenário: Buscar um cometário específico
        Quando eu buscar pelo comentário "492" do meu blog atraés da API
        Então a resposta conterá a mensagem "OK"
            E o status code da resposta será 200
            E as propriedades e valores contidos na resposta serão:
                |   postId      |   99                                                                                                                                                                  |            
                |   id          |   492                                                                                                                                                                 |
                |   name        |   consequatur alias ab fuga tenetur maiores modi                                                                                                                      |
                |   email       |   Amina@emmet.org                                                                                                                                                     |
                |   body        |   iure deleniti aut consequatur necessitatibus\nid atque voluptas mollitia\nvoluptates doloremque dolorem\nrepudiandae hic enim laboriosam consequatur velit minus    |

