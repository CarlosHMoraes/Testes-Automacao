#language: en
#utf-8

Feature: Cadastro de carros

  @cadastrar
  Scenario Outline: Cadastrar um novo carro no aplicativo
    Given que eu estou na tela de Cadastro de Carro
    When preencho os campos de "<modelo>","<ano>","<placa>","<km>","<preco>"
    When toco no botão cadastrar
    Then o sistema exibirá uma mensagem Carro cadastrado com sucesso

    Examples:
    | modelo          | ano   | placa     | km      | preco   |
    | Gol/Volkswagen  | 2014  | ABC-0123  |  12000  | 34.000  |
    | Uno/Fiat        | 2011  | WER-4567  |  46300  | 29.200  |
    | Fiesta/Ford     | 2009  | RFG-2356  |  64900  | 21.000  |
    | Corsa/Chevrolet | 2005  | QWK-4312  |  50000  | 18.500  |
