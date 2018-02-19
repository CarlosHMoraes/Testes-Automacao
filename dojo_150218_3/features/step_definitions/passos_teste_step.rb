Given(/^que eu precise logar$/) do
		visit ("http://opensource.demo.orangehrmlive.com/")		
		fill_in('txtUsername', :with => 'admin')
		fill_in('txtPassword', :with => 'admin')
		find('input[id="btnLogin"]').click
end

When(/^eu acesse a página de cadastro$/) do
	find(:id, 'menu_pim_viewPimModule').click
	find('input[id="btnAdd"]').click
end

When(/^eu acesse a página do cadastro do funcionário$/) do
	find(:id, 'menu_pim_viewPimModule').click
	fill_in('empsearch_employee_name_empName', :with => 'Carlos Henrique Moraes')
	find('input[id="searchBtn"]').click
	find('a', text: /Carlos Henrique/i).click
	#binding.pry
end

And(/^preencha as informações necessárias$/) do
	fill_in('firstName', :with => 'Carlos')
	fill_in('middleName', :with => 'Henrique')
	fill_in('lastName', :with => 'Moraes')
	attach_file('photofile', File.absolute_path('C:\Users\Inmetrics\Desktop\Foto3x4.jpg'))
	find('input[id="chkLogin"]').click
	fill_in('user_name', :with => 'carlos.moraes')
	fill_in('user_password', :with => 'senha1234')
	fill_in('re_password', :with => 'senha1234')
	select('Disabled', :from => 'status')	
end
And(/^altere as informações necessárias$/) do
	find('input[id="btnSave"]').click
	find('input[id="personal_optGender_1"]').click
end

Then(/^efetivo a alteração com sucesso$/) do
	find('input[id="btnSave"]').click
	#binding.pry
end

Then(/^realizo o cadastro com sucesso$/) do
	find('input[id="btnSave"]').click
	#binding.pry
end
