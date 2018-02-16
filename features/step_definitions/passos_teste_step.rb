Dado(/^que esteja no site da Inmetrics$/) do
	visit ("http://www.inmetrics.com.br")
	#find(:css, 'item_link').first(:link, "Quem Somos")
	#expect(page).to have_css('item_link')
	#click_link "http://www.inmetrics.com.br/quem-somos/"
	#click_link ("Quem Somos")
	first(:link, "Quem Somos").click
end

Quando(/^a pagina estiver carregada$/) do
	#assert_control_visible
	sleep(1)
	expect(page).to have_css(".fadeInDown")
end

Entao(/^procurar o texto/) do
	assert_text ("MAIS DE 15 ANOS DE ATUAÇÃO")
end

def assert_control_visible
	#expect(page).to have_css('iwh-sub-title', visible: true)
	expect(page).to have_no_css(".fadeInDown")
	#expect(page).to find(:css, "#iwh-sub-title").should be_visible
  end