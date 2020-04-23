#language: pt

Funcionalidade: Cadastro de produtos
    Para que eu possa disponibilizar produtos no catálogo
    Sendo um administrador de catálogo
    Posso cadastrar um novo produto

    @register_product @auth @smoke
    Cenário: Novo produto

        Dado que eu tenho o seguinte produto:
            | nome        | categoria      | preco | descricao               | imagem          |
            | Donkey Kong | Super Nintendo | 49.99 | Um jogo muito divertido | donkey-kong.jpg |
            E os produtores sao:
            | produtor |
            | Konami   |
            | Nintendo |
        Quando eu faço o cadastro desse item
        Então devo ver este item na lista de produtos

    @auth @doing
    Cenário: Duplicado
        O gestor de catálogo tenta cadastar um produto, porem o mesmo
        já foi cadastrado em outro momento, portanto o sistema
        deve notificar o usuário informando que o produto já existe.

        Dado que eu tenho o seguinte produto:
            | nome       | categoria  | preco | descricao               | imagem         | 
            | Golden Axe | Mega Drive | 39.99 | Um clássico top demais! | golden-axe.jpg |
            E os produtores sao:
            | produtor |
            | Sega     |
        Mas este item já foi cadastrado
        Quando eu faço o cadastro desse item
        Entao devo ver a notificaçao "Oops - Este produto já foi cadastrado!"






        # | God of War         | Playstation 4  | 149.99 | Sony Santa Monica | Um jogo épico                                |
        #     | Uncharted 4        | Playstation 4  | 99.99  | Naughty Dog       | Um jogo de ação frenético                    |
        #     | Kingdom Hearts III | Playstation 4  | 159.99 | Square Enix       | Um jogo muito lindo com personagens icônicos |