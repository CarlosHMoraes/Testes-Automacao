Given(/^que o usuário esteja logado$/) do
	
    binding.pry
	site = Site.new
	site.load

	logar = Logar.new
	logar.log("admin","admin")	
end

And(/^o usuário esteja na tela de tarefas$/) do
	find('a', id: "menu_recruitment_viewRecruitmentModule").click
	find('a', id: "menu_recruitment_viewJobVacancy").click
end

When(/^eu acessar a tela de cadastro$/) do
	find('input[id="btnAdd"]').click
end

And(/^preencher as informações da tarefa$/) do
	cadastro = CadastroRecrutamento.new
	cadastro.preenche(3,"Recepcionista","Linda Anderson","2","realizar todas as tarefas da vaga",true,false)
	#binding.pry
end

Then(/^poderei cadastra-la$/) do
	CadastroRecrutamento.new.efetiva()
	binding.pry
end
