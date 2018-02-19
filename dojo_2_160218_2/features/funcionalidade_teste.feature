#language: en
#utf-8

@manipulando_tasks
Feature: Manipular tarefas
	Eu como gestor de equipe
	Gostaria de manipular diversas tarefas
	Para que meus subordinados controlem melhor suas agendas

	Background: Usuario logado acessa a tela de tarefas
		Given que o usuário esteja logado
		And o usuário esteja na tela de tarefas

		@cenario_cadastro
		Scenario: Cadastrar nova tarefa 
			When eu acessar a tela de cadastro
			And preencher as informações da tarefa
			Then poderei cadastra-la

		@cenario_edicao
		Scenario: Editar tarefa por assunto e por data de vencimento
			When eu procurar uma tarefa por "assunto" e "data de vencimento"
			And houver alguma correspondencia 
			Then acessa a tela de edição
			And altera as informações

		@cenario_exclusao
		Scenario: Excluir tarefa por assunto e por data de vencimento
			When eu procurar uma tarefa por "assunto" e "data de vencimento"
			And houver alguma correspondencia 
			Then remove a tarefa

		@cenario_exclusao_feriado
		Scenario Outline: Excluir tarefas que ocorram nos feriados 
			When eu procurar uma tarefa por "<data_vencimento>" 
			And ela for da minha "<equipe>" 
			Then remove a tarefa
			
			Examples: 
				|	data_vencimento	|	equipe		|
				|	01/01			|	Emil Duff	|
				|	25/12			|	Elvin Hinds	|

