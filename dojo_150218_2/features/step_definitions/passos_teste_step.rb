Given(/^que eu esteja no site da Demoqa$/) do
		visit ("http://demoqa.com/")		
end

When(/^eu acesse a página de cadastro$/) do
	find('#menu-registration').click
end

And(/^preencha as informações necessárias$/) do
	fill_in('name_3_firstname', :with => 'Carlos Henrique')
	fill_in('name_3_lastname', :with => 'Moraes')
	find(:xpath, "//input[@value='single']").click
	find(:xpath, "//input[@value='dance']").click
	find(:xpath, "//input[@value='reading']").click
	select('Brazil', :from => 'dropdown_7')
	select('7', :from => 'mm_date_8')
	select('27', :from => 'dd_date_8')
	select('1992', :from => 'yy_date_8')
	fill_in('phone_9', :with => '5511983524337')
	fill_in('username', :with => 'carlos.moraes')
	fill_in('email_1', :with => 'carlos.moraes15555@inmetrics.com.br')
	fill_in('description', :with => 'about myself kkkk')
	fill_in('password_2', :with => 'senha1234')
	fill_in('confirm_password_password_2', :with => 'senha1234')
	attach_file('profile_pic_10', File.absolute_path('C:\Users\Inmetrics\Desktop\Foto3x4.jpg'))
	find('input[name="pie_submit"]').click
	#find('.radio_4[][value=single]').set(true)
	#find(:xpath, '//*[@id="pie_register"]/li[2]/div/div/input[1]').set(true)
	#find('label', text: 'Single').find(:xpath, './ancestor::input').set(true)
	#check("radio_4[value='single']")
	#q = "//label[contains(text(), 'Single')]/following-sibling::input"
	#find(:xpath, q).set(true)

	#all('input[name="radio_4[]"]')[0].set(true)
	#find('input[name="radio_4['single']"]').set(true)
	#fill_in('radio_4[]', :with => 'single')
	#all('input[name="radio_4[]"]')[0].set(true)
end

Then(/^realizo o cadastro com sucesso$/) do
	#binding.pry
	sleep(1)
	#assert_text ("Thank you for your registration")
	assert_text ("Error: Username already exists")
end
