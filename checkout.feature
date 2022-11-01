#Language: pt

Feature: Tela de Cadastro - Checkout
            Quero fazer login na plataforma
            Para visualizar os meus pedidos

            Contexto:
            Dado que o usuário possua uma conta cadastrada no sistema

            Cenário: Área de cadastro
            Quando o usuario preencher todos os campos obrigatórios "nome"
            E preencher "sobrenome"
            E informar "cep"
            E informar "telefone"
            E informar "endereço de e-mail"
            Então será redirecionado para a tela "checkout"

            Cenário: Dados de cadastro incompletos
            Quando o usuario deixar de preencher dados obrigatórios "nome"
            Então o sistema deve exibir a mensagem "Complete todos os campos obrigatórios"

            Cenário: E-mail inválido
            Quando o usuario digitar <e-mail> com formato inválido
            Então o sistema deve exibir uma <mensagem>

            Exemplos:
            | E-mail         | Mensagem        |
            | mariaebac.com  | E-mail inválido |
            | maria@ebac;com | E-mail inválido |

            Cenário: Cadastro com campos vazios
            Quando o usuário tenta realizar cadastro sem preencher <e-mail>
            E não inseriu o <cep>
            E não completou <nome>
            E não informou <telefone>
            Então o sistema deve exibir uma <mensagem>

            Exemplos:
            | E-mail         | Cep     | Nome  | Telefone  | Mensagem
            | x              | 9608500 | Maria | 984635146 | Complete todos os campos obrigatórios
            | maria@ebac.com | 9608500 | Maria | x         | Complete todos os campos obrigatórios
            | maria@ebac.com | x       | Maria | 984635146 | Complete todos os campos obrigatórios
            | maria@ebac.com | 9608500 | x     | 984635146 | Complete todos os campos obrigatórios


