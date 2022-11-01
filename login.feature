            #Language: pt

            Funcionalidade: Fazer login
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que o usuário possua uma conta cadastrada no sistema

            Cenário: Fazer login para efetuar checkout
            Quando o utilizador digitar "maria@ebac.com"
            E senha "ebac123"
            Então será redirecionado a tela de checkout

            Cenário: Usuário e senha inválidos
            Quando o utilizador digitar o <usuario>
            E senha <senha> inválidos
            Então o sistema deve exibir uma <mensagem>

            Exemplos:
            | usuario          | senha   | mensagem                   |
            | mmmaria@ebac.com | ebac123 | Usuário ou senha inválidos |
            | maria@ebac.com   | 123ebac | Usuário ou senha inválidos |
