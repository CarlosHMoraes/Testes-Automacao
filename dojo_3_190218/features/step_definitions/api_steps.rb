Quando ("buscar todos os posts do meu blog através da API") do
    #@resposta = HTTParty.get(ENVIRONMENT['api']+"/posts")
    @resposta = HTTParty.get("http://jsonplaceholder.typicode.com/posts")
    
    puts @resposta.body
end

Quando ("buscar todos pelo post {string} do meu blog através da API") do |post|
    #@resposta = HTTParty.get(ENVIRONMENT['api']+"/posts")
    @resposta = HTTParty.get("http://jsonplaceholder.typicode.com/posts/#{post}")
    
    puts @resposta.body
end


Então ("a resposta trará um total de {int} registros") do |quantidade|
    expect(@resposta.size).to eq(quantidade)
end

Então (/^valido o código de resposta para criação esperado$/) do
    expect(response.code).to eq 201
    puts "Validando o recebimento de resposta 201"
    puts response.body
end

Quando ("cadastrar um novo post no blog usando os dados abaixo:") do |dados|
    body = dados.to_json
    @resposta = HTTParty.post("http://jsonplaceholder.typicode.com/posts", :body => body)
end

Então("o status code da resposta será {int}") do |status_code|
    expect(@resposta.code).to eq(status_code)
end

Então("a resposta conterá a mensagem {string}") do |mensagem|
    expect(@resposta.message).to eq (mensagem)
end

Quando("excluir o post número {string} do blog") do |id|
    @resposta = HTTParty.delete("http://jsonplaceholder.typicode.com/posts/#{id}")
end

Quando(/^eu fizer a requisição de alteração de um comentário$/) do
    response = HTTParty.put("http://jsonplaceholder.typicode.com/comments/100",
    :body => { 'title' => 'testando minha alteração',
            'body' => 'realizando alteração',
            'userId' => '3'}.to_json,
    :headers => {'Content-Type' => 'application/json'})
    puts response.code
end

Então(/^valido o código de resposta para alteração esperado$/) do
    expect(response.code).to eq 200
    puts "Validando o recebimento do código de resposta 200"
    puts response.body
end

Dado(/^que eu tenha acesso ao webservice$/) do
    response = HTTParty.get("http://jsonplaceholder.typicode.com")
    
    puts response.code
end


Quando (/^eu cadastrar um novo comentário no blog usando os dados abaixo:$/) do |dados|
    body = dados.to_json
    @resposta = HTTParty.post("http://jsonplaceholder.typicode.com/comments/", :body => body)
end

Quando (/^eu buscar todos os comentários através da API$/) do
    @resposta = HTTParty.get("http://jsonplaceholder.typicode.com/comments")
    puts @resposta.body
end

Quando ("eu buscar pelo comentário {string} do meu blog atraés da API") do |comment|
    @resposta = HTTParty.get("http://jsonplaceholder.typicode.com/comments/#{comment}")
    
    puts @resposta.body
end

And ("as propriedades e valores contidos na resposta serão:") do |dados| 
    body = dados.to_json   

    expect(@resposta.body['postId']).to eq body['postId']
    expect(@resposta.body['id']).to eq body['id']
    expect(@resposta.body['name']).to eq body['name']
    expect(@resposta.body['email']).to eq body['email']
    expect(@resposta.body['body']).to eq body['body']

end

