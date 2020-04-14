# Funcionalidade: Login
Dado("que acesso a página principal") do
    visit "http://pixel-web:3000/login"
    page.current_window.resize_to(1440, 900)
end

# Funcionalidade: Mensagem de alerta {string}
Então("devo ver uma mensagem de alerta {string}") do |string|
    logged_user_erro = find(".card-body .alert span").text
    expect(logged_user_erro).to eql string
end

# Cenario: Acessar o portal
# @login_happy
Quando("eu submeto minhas credenciais {string} e {string}") do |email, password|
    # O hastag é para buscar um elemento pelo ID (Inspecione o elemento para ver)
    find("#emailId").set email
    find("input[name=password]").set password
    click_button "Entrar"
end
  
Então("devo ser autenticado") do
    logged_user = find(".user .info span").text
    expect(logged_user).to eql "Papito"
end

#Desafio do Ninja

# 1 Replay da Live 2
# Automatizar o cenário de Senha inválida
# Cenario: Senha inválida
# @login_invalid_password
Quando("eu submeto minhas credenciais {string} com senha inválida {string}") do |email, invalid_password|
    find("#emailId").set email
    find("input[name=password]").set invalid_password
    click_button "Entrar"
end

# Cenario: Email não cadastrado no sistema
# @login_invalid_email
Quando("eu submeto minhas credenciais {string} com email não cadastrado com senha {string}") do |invalid_email, password|
    find("#emailId").set invalid_email
    find("input[name=password]").set password
    click_button "Entrar"
end

# Cenario: Não informo o email
# @login_empty_email
Quando("eu submeto minhas credenciais sem email com senha {string}") do |password|
    find("input[name=password]").set password
    click_button "Entrar"
end

# Cenario: Não informo a senha
# @login_empty_password
Quando("eu submeto minhas credenciais {string} sem senha") do |email|
    find("#emailId").set email
    click_button "Entrar"
end