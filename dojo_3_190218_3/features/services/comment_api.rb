class CommentarioAPI
    include HTTParty

    base_url "http://jsonplaceholder.typicode.com"
    format  :json

    def criar_comentario(body)
        self.class.post("/comments", :body => body.to_json)
    end

end