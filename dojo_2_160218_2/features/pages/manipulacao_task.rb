 class Site < SitePrism::Page

    set_url "http://opensource.demo.orangehrmlive.com/"

end

class Logar < SitePrism::Page
    element :usuario, :css, '#txtUsername'
    element :senha, :css, '#txtPassword'
    element :botao, :css, '#btnLogin'

    def log(user, pwd)
        usuario.set(user)
        senha.set(pwd)
        botao.click
    end
end

class CadastroRecrutamento < SitePrism::Page
    #section :campos, CamposTask, "#"
    #eleemnt :div, :css, ""

    element :jobtitle, '#addJobVacancy_jobTitle'
    element :vacancy, '#addJobVacancy_name'
    element :manager, '#addJobVacancy_hiringManager'
    element :positions, '#addJobVacancy_noOfPositions'
    element :description, '#addJobVacancy_description'
    element :active, '#addJobVacancy_status'
    element :rss, '#addJobVacancy_publishedInFeed'
    element :save, '#btnSave'

    def preenche(title_p,vacancy_p,manager_p,positions_p,description_p,active_p,rss_p)
        jobtitle.select(title_p)
        #select(title_p, :from => jobtitle)
        vacancy.set(vacancy_p)
        manager.set(manager_p)
        positions.set(positions_p)
        description.set(description_p)
        active.set(active_p)
        rss.set(rss_p)
        save.click
    end

    def efetiva()
        save.click()
    end

end

