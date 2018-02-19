#language: en
#utf-8

@cadastro_funcionario
Feature: Realizar cadastro de funcionário
	Eu como administrador
	Desejo cadastrar um funcionario no site http://opensource.demo.orangehrmlive.com

	@cenario_cadastro
	Scenario: Cadastrar novo funcionário
	Given que eu precise logar
	When eu acesse a página de cadastro
	And preencha as informações necessárias
	Then realizo o cadastro com sucesso

	@cenario_alteracao
	Scenario: Alterar funcionário existente
	Given que eu precise logar
	When eu acesse a página do cadastro do funcionário
	And altere as informações necessárias
	Then efetivo a alteração com sucesso
	