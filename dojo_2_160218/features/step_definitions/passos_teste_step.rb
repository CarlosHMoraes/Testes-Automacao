Given(/^que o usuário esteja logado$/) do
	site = Site.new
	site.load

	logar = Logar.new
	logar.log("will","will")	
end

And(/^o usuário esteja na tela de tarefas$/) do
	find('a', id: "grouptab_3").click
	find('a', id: "moduleTab_9_Tasks").click
end

When(/^eu acessar a tela de cadastro$/) do
	find('a', text: "Create Task").click	
end

And(/^preencher as informações da tarefa$/) do
	cadastro = Cadastro.new
	#cadastro.preenche("Reunião de emergência X","2018-12-25","01","45","pm","Completed","Task","Send literature","Kathi Cutright","2018-12-25","03","30","pm","Medium","minha descricao")
	cadastro.preenche("Reunião de emergência X","12/25/2018","01","45","Not Started","Task","Send literature","Kathi Cutright","12/25/2018","03","30","Medium","minha descricao")
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
	#first('.glyphicon-filter').click
	
	find(:xpath, '//*[@id="pagination"]/td/table/tbody/tr/td[1]/ul[3]/li/a', match: :first).click
	#//*[@id="MassUpdate"]/div[3]/div/ul[1]/li/a
	fill_in('name_basic', :with => "Reunião de emergência X")
	click_button('search_form_submit')
end



And(/^houver alguma correspondencia$/) do
	#all('//*[@id="MassUpdate"]/div[3]/table/tbody/tr > td:nth-child(7)').each do |td|
    #	%w{"12/25/2018"}.should include td.text
	#  end		

	#PesquisaLinha.new.encontra_linha('12/25/2018').click
	#find(:xpath, "//*[@id='MassUpdate']/div[3]/table/tbody/tr[1]/td[7][contains(.,'12/25/2018')]/ancestor-or-self::td[contains(@class, 'listview-checkbox')]")
	#find(:xpath, "//*[@id='MassUpdate']/div[3]/table/tbody/tr[1]/td[7][contains(.,'12/25/2018')]/ancestor::tr[1]/td[4][contains(.,'Reunião de emergência X')]/ancestor::tr[1]/td[1]/input").click
	PesquisaLinha.new.verifica_linha('12/25/2018','Reunião de emergência X')
	#//*[@id="MassUpdate"]/div[3]/table/tbody/tr/td[7]
	#//*[@id="MassUpdate"]/div[3]/table/tbody/tr/td[1]/input
	#//*[@id="MassUpdate"]/div[3]/table/tbody/tr/td[4]/b/a

	#binding.pry 
end

Then(/^acessa a tela de edição$/) do
	#find(:xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr[1]/td[1]/input', match: :first).click
	PesquisaLinha.new.acessa_linha() 	
end

And(/^altera as informações$/) do
	cadastro = Cadastro.new
	cadastro.preenche("Reunião de teste X","12/22/2018","01","45","In Progress","Task","Send literature","Kathi Cutright","12/22/2018","03","30","High","minha descricao alterada")
	cadastro.salvar()
	binding.pry 
end

When(/^eu procurar uma tarefa por "<data_vencimento>"$/) do

end

And(/^ela for da minha "<equipe>"$/) do

end

Then(/^remove a tarefa$/) do

end
