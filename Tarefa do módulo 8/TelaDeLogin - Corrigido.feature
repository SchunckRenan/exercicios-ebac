            #language: pt

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Critério de aceitação 1: Ao inserir dados válidos deve ser direcionado para a tela de checkout

            Contexto:
            Dado que eu acesse os meus pedidos na EBAC-SHOP

            Cenário: Login com dados válidos
            Quando colocar o nome de usuário "joe@ebac.com"
            E a senha "joeEmac367"
            Então deve ser direcionado para a tela de checkout

            Critério de aceitação 2: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

            Cenário: Login com usuário inexistente
            Quando colocar o nome de usuário "joel@bac.com"
            E a senha "slowSonic123"
            Então deve apresentar a mensagem de erro "Usuário ou Senha inválidos"

            Cenário: Login com senha inválida
            Quando colocar o nome de usuário "joe@ebac.com"
            E a senha "joe123456"
            Então deve exibir a mensagem "Usuário ou senha inválidos"


            Aplicando a Tabela de Cenário dentro do contexto

            Esquema do Cenário: Validando hipóteses para os dois cenários

            Quando escrever o nome de usuário no campo de <usuario>
            E a senha no campo de <senha>
            Então a mensagem deve ser exibida <mensagem>

            Exemplos: |usuario|senha|mensagem|
            | "toejam@ebac.com"   | "Toejam235"       | "Direcionar para a tela de checkout" |
            | "alucard@ebac.com"  | "dieMonster345"   | "Direcionar para a tela de checkout" |
            | "wario@nintendo.jp" | "notMario111"     | "Usuário ou senha inválidos"         |