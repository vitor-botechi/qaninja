
class LoginPage
    include Capybara::DSL

    def go
        visit "http://pixel-web:3000/login"
    end

    def with(email, pass)
        # O hastag é para buscar um elemento pelo ID (Inspecione o elemento para ver)
        find("#emailId").set email
        find("input[name=password]").set pass
        click_button "Entrar"
    end

    def alert
        return find(".alert").text
    end
end