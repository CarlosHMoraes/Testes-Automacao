#language: en
#utf-8

@cadastro_demoqa
Feature: Realizar cadastro no site
	Eu como novo usuário
	Desejo me cadastrar no site http://demoqa.com/

	@cenario_sucesso
	Scenario: Cadastrar usuário
	Given que eu esteja no site da Demoqa
	When eu acesse a página de cadastro
	And preencha as informações necessárias
	Then realizo o cadastro com sucesso

	@cenario_fracasso
	Scenario: Cadastrar usuário
	Given que eu esteja no site da Demoqa
	When eu acesse a página de cadastro
	And preencha as informações necessárias
	Then realizo o cadastro com funcionario existente