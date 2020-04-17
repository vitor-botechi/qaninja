#language: pt

Funcionalidade: Cadastro de produtos
    Para que eu possa disponibilizar produtos no catálogo
    Sendo um administrador de catálogo
    Posso cadastrar um novo produto

    @register_product @auth
    Cenário: Novo produto

        Dado que eu tenho o seguinte produto:
            | nome               | categoria      | preco  | produtores        | descricao                                    |
            | Donkey Kong        | Super Nintendo | 49.99  | Konami            | Um jogo muito divertido                      |
            | God of War         | Playstation 4  | 149.99 | Sony Santa Monica | Um jogo épico                                |
            | Uncharted 4        | Playstation 4  | 99.99  | Naughty Dog       | Um jogo de ação frenético                    |
            | Kingdom Hearts III | Playstation 4  | 159.99 | Square Enix       | Um jogo muito lindo com personagens icônicos |
        Quando eu faço o cadastro desse item
        Então devo ver este item na lista de produtos