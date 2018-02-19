
Quando ("eu passar o CEP {string} no webservice dos Correios") do |cep|
    @resposta = HTTParty.get("https://viacep.com.br/ws/#{cep}/json/")
    
    puts @resposta.body
end

Então("a resposta conterá a mensagem {string}") do |mensagem|
    expect(@resposta.message).to eq (mensagem)
end

Então("o status code da resposta será {int}") do |status_code|
    expect(@resposta.code).to eq(status_code)
end

And ("as informações do CEP serão exibidos em tela") do  
    puts @resposta['logradouro'] + ', Bairro ' + @resposta['bairro']
    puts @resposta['localidade'] + '/' +  @resposta['uf']
    puts 'CEP: ' +  @resposta['cep']
end