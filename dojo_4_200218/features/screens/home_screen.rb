class Home < Calabash::ABase
    def acessar_cadastro
        wait_for_elements_exist(["* id:'cadastrar'"], :timeout => 30)
        touch("* id:'cadastrar'")
    end
end
