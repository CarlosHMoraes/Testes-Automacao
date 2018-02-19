#language: pt
#utf-8

Funcionalidade: Buscar as informações de um CEP
    Eu como uma aplicação cliente
    Desejo receber as informações de endereço de um CEP
    A partir de um CEP identificado

    Cenário: Buscar um CEP
        Quando eu passar o CEP "06460000" no webservice dos Correios
        Então a resposta conterá a mensagem "OK"
            E o status code da resposta será 200
            E as informações do CEP serão exibidos em tela
