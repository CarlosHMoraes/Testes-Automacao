Given(/^que o usuário esteja logado$/) do
	site = Site.new
	site.load

	logar = Logar.new
	logar.log("will","will")	
end

And(/^o usuário esteja na tela de tarefas$/) do
	find('a', id: "grouptab_3").click
	find('a', id: "moduleTab_6_Tasks").click
end

When(/^eu acessar a tela de cadastro$/) do
	find('a', text: "Create Task").click	
end

And(/^preencher as informações da tarefa$/) do
	cadastro = Cadastro.new
	#cadastro.preenche("Reunião de emergência X","2018-12-25","01","45","pm","Completed","Task","Send literature","Kathi Cutright","2018-12-25","03","30","pm","Medium","minha descricao")
	cadastro.preenche("Reunião de emergência X","2018-12-25","01","45","Not Started","Task","Send literature","Kathi Cutright","2018-12-25","03","30","Medium","minha descricao")
	#click_button('btn_parent_name')
	#fill_in('name_advanced', :with => 'Union Bank')
	#Kathi Cutright
	#binding.pry
end

Then(/^poderei cadastra-la$/) do
	Cadastro.new.salvar()
	#binding.pry
end

When(/^eu procurar uma tarefa por "assunto" e "data de vencimento"$/) do
	#find(:css, 'glyphicon glyphicon-filter parent-dropdown-handler').click
	first('.glyphicon-filter').click
	binding.pry 
end

And(/^houver alguma correspondencia$/) do

end

Then(/^acessa a tela de edição$/) do

end

And(/^altera as informações$/) do

end

When(/^eu procurar uma tarefa por "<data_vencimento>"$/) do

end

And(/^ela for da minha "<equipe>"$/) do

end

Then(/^remove a tarefa$/) do

end
