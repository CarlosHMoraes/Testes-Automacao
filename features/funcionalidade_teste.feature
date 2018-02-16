#language: pt
#utf-8

@teste @primeiro_dojo
Funcionalidade: Encontrar texto no site
	Quero encontrar um texto especifico no site da Inmetrics
	Na pagina referente a Quem Somos

	@cenario_unico
	Cenario: Encontrar texto
	Dado que esteja no site da Inmetrics
	Quando a pagina estiver carregada
	Entao procurar o texto
