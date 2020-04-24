# Funcionalidade: Login
# "Traduzem" o login.feature
Dado("que acesso a página principal") do
    @login_page.go
end

Quando("eu submeto minhas credenciais {string} e {string}") do |email, password|
    @login_page.with(email, password)
end

Então("devo ser autenticado") do
    expect(@side.logged_user).to eql "eu@papito.io" # Expect que força o erro propositalmente (para falhar no log)
end

Então("devo ver uma mensagem de alerta {string}") do |expected_alert|
    expect(@login_page.alert).to eql expected_alert
end
