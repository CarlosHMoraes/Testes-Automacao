 class Site < SitePrism::Page

    set_url "https://demo.suiteondemand.com/"

end

class Logar < SitePrism::Page
    element :usuario, :css, '#user_name'
    element :senha, :css, '#username_password'
    element :botao, :css, '#bigbutton'

    def log(user, pwd)
        usuario.set(user)
        senha.set(pwd)
        botao.click
    end
end

class Cadastro < SitePrism::Page
    #section :campos, CamposTask, "#"
    #element :div, :css, ""

    element :assunto, '#name'
    element :data, '#date_start_date'
    element :hora, '#date_start_hours'
    element :minuto, '#date_start_minutes'
    #element :periodo, '#date_start_meridiem'
    element :status, '#status'
    element :relacionado, '#parent_type'
    element :relacionado_nome, '#parent_name'
    element :contato, '#contact_name'
    element :venc_data, '#date_due_date'
    element :venc_hora, '#date_due_hours'
    element :venc_minuto, '#date_due_minutes'
    #element :venc_periodo, '#date_due_meridiem'
    element :prioridade, '#priority'
    element :descricao, '#description'
    #element :save,  :xpath, '//*[@id="SAVE"]'

    #def preenche(assunto_p,data_p,hora_p,minuto_p,periodo_p,status_p,relacionado_p,relacionado_nome_p,contato_p,venc_data_p,venc_hora_p,venc_minuto_p,venc_periodo_p,prioridade_p,descricao_p)
    def preenche(assunto_p,data_p,hora_p,minuto_p,status_p,relacionado_p,relacionado_nome_p,contato_p,venc_data_p,venc_hora_p,venc_minuto_p,prioridade_p,descricao_p)
        assunto.set(assunto_p)
        data.set(data_p)
        hora.select(hora_p)
        minuto.select(minuto_p)
        #periodo.select(periodo_p)
        status.select(status_p)
        relacionado.select(relacionado_p)
        relacionado_nome.set(relacionado_nome_p)
        contato.set(contato_p)
        venc_data.set(venc_data_p)
        venc_hora.select(venc_hora_p)
        venc_minuto.select(venc_minuto_p)
        #venc_periodo.select(venc_periodo_p)
        prioridade.select(prioridade_p)
        descricao.set(descricao_p)
    end

    def salvar()
        #save.click
        first(:button, "SAVE").click
    end

end

class PesquisaLinha < SitePrism::Page
    def verifica_linha(data_p, assunto_p)        
        #find(:xpath, "//*[@id='MassUpdate']/div[3]/table/tbody/tr[1]/td[7][contains(.,'#{data_p}')]/ancestor::tr[1]/td[4][contains(.,'#{assunto_p}')]/ancestor::tr[1]/td[1]/input").click        
        find(:xpath, "//*[@id='MassUpdate']/div[3]/table/tbody/tr[1]/td[7][contains(.,'#{data_p}')]/ancestor::tr[1]/td[4][contains(.,'#{assunto_p}')]/ancestor::tr[1]/td[2]/a[contains(@class, 'edit-link')]").click
    end

    def acessa_linha() 
        #find(:xpath, "//*[@id='MassUpdate']/div[3]/table/tbody/tr[1]/td[1]/input").should be_checked
        #find(:xpath, "//*[@id='MassUpdate']/div[3]/table/tbody/tr[1]/td[1]/input").isSet
        #find(:xpath, "//*[@id='MassUpdate']/div[3]/table/tbody/tr[1]/td[2]/a[contains(@class, 'edit-link')]").click
        #//*[@id="MassUpdate"]/div[3]/table/tbody/tr[3]/td[2]
    end
    

end
