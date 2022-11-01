            #Language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:  
            Dado que o usuário esteja selecionando um produto

            Cenário: Configurar produto de acordo com tamanho, cor e quantidade
            Quando o usuário clicar em comprar <produto>
            E selecionar uma opção de <cor>
            E escolher <tamanho>
            E selecionar a <quantidade>
            Então o sistema deve exibir a <mensagem>

            Exemplos:
            | Produto  | Cor   | Tamanho | Quantidade | Mensagem                       |
            | Camiseta | Rosa  | G       | 2          | Produto adicionado ao carrinho |
            | Regata   | Preta | M       | 1          | Produto adicionado ao carrinho |

            Cenário: Usuário não configurou o produto
            Quando clicar em comprar produto
            Mas não selecionar "cor"
            E não escolher "tamanho"
            E não definir "quantidade"
            Então o sistema deve exibir a mensagem "Preencha os campos para efetuar a compra"  
            
            Cenário: Deve permitir apenas 10 produtos por venda
            Quando o usuário estiver escolhendo as configurações do produto
            E selecionar quantidade maior que 10 itens
            E clicar no botão comprar 
            Então o sistema deve exibir mensagem "Quantidade indisponível"

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando o usuário estiver escolhendo as configurações do produto
            E selecionar quantidade menor ou igual a 10 itens
            E clicar no botão comprar 
            Então o sistema deve exibir mensagem "Produto adicionado ao carrinho"

            Cenário: Limpar campos de configuração do produto
            Quando o usuário estiver ajustando seu produto
            E selecionar o botão "Limpar"
            Então todos os campos devem retornar a "Nenhum"


