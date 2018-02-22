require 'calabash-android/calabash_steps'

Given (/^que eu estou na tela de Cadastro de Carro$/) do
    page(Home).acessar_cadastro
end

When (/^preencho os campos de \"([^\"]*)\",\"([^\"]*)\",\"([^\"]*)\",\"([^\"]*)\",\"([^\"]*)\"$/) do |modelo,ano,placa,km,preco|    
    page(CadastroCarro).preencher_info(modelo,ano,placa,km,preco)    
    #page(CadastroCarro).preencher_info( MASSA['carros']['modelo'], MASSA['carros']['ano'], MASSA['carros']['placa'], MASSA['carros']['km'], MASSA['carros']['valor'])    
end

When (/^toco no botão cadastrar$/) do
    page(CadastroCarro).cadastrar
end

Then (/^o sistema exibirá uma mensagem Carro cadastrado com sucesso$/) do
    #wait_for_elements_exists(["* text:''"])
    binding.pry
end