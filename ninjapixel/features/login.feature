#language:pt

Funcionalidade: Login
    Para que eu possa gerenciar os jogos do meu catálogo NinjaPixel
    Sendo um Administrador de catálogo
    Posso acessar o sistema com meu e-mail e senha

@login_happy
Cenario: Acessar o portal

    Dado que acesso a página principal
    Quando eu submeto minhas credenciais "papito@ninjapixel.com" e "pwd123"
    Então devo ser autenticado

@login_invalid_password
Cenario: Senha inválida

    Dado que acesso a página principal
    Quando eu submeto minhas credenciais "papito@ninjapixel.com" com senha inválida "123456"
    Então devo ver uma mensagem de alerta "Usuário e/ou senha inválidos"

@login_invalid_email
Cenario: Email não cadastrado no sistema

    Dado que acesso a página principal
    Quando eu submeto minhas credenciais "vbotechi@gmail.com" com email não cadastrado com senha "pwd123"
    Então devo ver uma mensagem de alerta "Usuário e/ou senha inválidos"

@login_empty_email
Cenario: Não informo o email

    Dado que acesso a página principal
    Quando eu submeto minhas credenciais sem email com senha "pwd123"
    Então devo ver uma mensagem de alerta "Opps. Informe o seu email!"

@login_empty_password
Cenario: Não informo a senha

    Dado que acesso a página principal
    Quando eu submeto minhas credenciais "papito@ninjapixel.com" sem senha
    Então devo ver uma mensagem de alerta "Opps. Informe a sua senha!"
