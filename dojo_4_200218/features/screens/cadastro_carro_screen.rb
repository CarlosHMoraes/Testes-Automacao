class CadastroCarro < Calabash::ABase

    def preencher_info(modelo_p, ano_p, placa_p, km_p, valor_p)
        preencher('modelo',modelo_p)
        preencher('ano',ano_p)
        preencher('placa',placa_p)
        preencher('km',km_p)
        preencher('valor',valor_p)
    end

    def cadastrar()
        touch("* id:'cadastrar'")
    end

    def preencher(campo_p, valor_p)
        touch("* id:'#{campo_p}'")
        keyboard_enter_text(valor_p)
        hide_soft_keyboard
    end
end
