            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Critério de aceitação 1: Seleções de cor, tamanho e quantidade devem ser obrigatórios

            Cenário: Cliente escolhe somente o tamanho do produto
            Dado que sou cliente logado na EBAC-SHOP com determinado produto escolhido
            Quando selecionar o tamanho "XL"
            Então a mensagem de alerta "Selecione a cor e a quantidade desejada" deve ser exibida


            Aplicando o Contexto aos cenários de teste


            Contexto:
            Dado que sou cliente logado na EBAC-SHOP com determinado produto escolhido

            Cenário: Cliente escolhe somente a cor do produto
            Quando selecionar a cor "blue"
            Então a mensagem de alerta "Selecione o tamanho e a quantidade desejada" deve ser exibida

            Cenário: Cliente escolhe somente a quantidade do produto
            Quando selecionar a quantidade "1"
            Então a mensagem de alerta "Selecione a cor e o tamanho desejado" deve ser exibida

            Cenário: Cliente escolhe somente o tamanho e a cor do produto
            Quando selecionar tamanho "M"
            E escolher a cor "red"
            Então a mensagem de alerta "Selecione a quantidade desejada" deve ser exibida

            Cenário: Cliente escolhe somente o tamanho e a quantidade do produto
            Quando selecionar tamanho "M"
            E escolher a quantidade "2"
            Então a mensagem de alerta "Selecione a cor desejada" deve ser exibida

            Cenário: Cliente escolhe somente a cor e a quantidade do produto
            Quando selecionar a cor "orange"
            E escolher a quantidade "3"
            Então a mensagem de alerta "Selecione o tamanho desejado" deve ser exibida

            Cenário: Cliente não escolhe nenhuma das opções
            Quando não selecionar o tamanho e nem selecionar a cor
            E não escolher a quantidade
            Então a mensagem de alerta "Selecione o tamanho, a cor e a quantidade desejada" deve ser exibida

            Cenário: Cliente escolhe tamanho, cor e quantidade de produtos
            Quando selecionar a cor "red" e o tamanho "S"
            E escolher a quantidade "4"
            Então a mensagem "Produto(s) adicionado(s) ao carrinho!" deve ser exibida


            Aplicando a Tabela de Cenário dentro do contexto


            Esquema do Cenário: Validando cenários variados

            Quando eu escolher o <tamanho> e a <cor> do produto
            E eu escolher a <quantidade> desejada de produtos
            Então deve-se exibir a  <mensagem>

            Exemplos: |tamanho|cor|quantidade|mensagem|
            | "XS" | "blue"   | "0"  | "Selecione a quantidade desejada"       |
            | "S"  | "orange" | "1"  | "Produto(s) adicionado(s) ao carrinho!" |
            | "M"  | "red"    | "2"  | "Produto(s) adicionado(s) ao carrinho!" |
            | "L"  | "blue"   | "3"  | "Produto(s) adicionado(s) ao carrinho!" |
            | "XL" | "orange" | "4"  | "Produto(s) adicionado(s) ao carrinho!" |
            | "XS" | "red"    | "5"  | "Produto(s) adicionado(s) ao carrinho!" |
            | "S"  | "blue"   | "6"  | "Produto(s) adicionado(s) ao carrinho!" |
            | "M"  | "orange" | "7"  | "Produto(s) adicionado(s) ao carrinho!" |
            | "L"  | "red"    | "8"  | "Produto(s) adicionado(s) ao carrinho!" |
            | "XL" | "blue"   | "9"  | "Produto(s) adicionado(s) ao carrinho!" |
            | "XS" | "orange" | "10" | "Produto(s) adicionado(s) ao carrinho!" |
            | "S"  | "red"    | "11" | "Máximo de 10 produtos excedido"        |



            Critério de aceitação 2: Deve permitir apenas 10 produtos por venda

            Contexto:
            Dado que um cliente da EBAC-SHOP já tenha escolhido produto, cor e tamanho

            Cenário: Adicionar 0 itens no pedido
            Quando adicionar 0 itens ao pedido
            Então a mensagem "Selecione a quantidade desejada" deve ser exibida

            Cenário: Adicionar 1 item ao pedido
            Quando adicionar 1 item ao pedido
            Então A mensagem "Produto adicionado ao carrinho" deve ser exibida

            Cenário: Adicionar 11 itens ao pedido
            Quando adicionar 11 itens ao pedido
            Então a mensagem de alerta  "Máximo de 10 produtos excedidos" deve ser exibida


            Aplicando a Tabela de Cenário dentro do contexto


            Esquema do Cenário: Validando cenários variados

            Quando adicionar <quantidade> de produtos(s) ao pedido
            Então Deve-se exibir e <mensagem>

            Exemplos: |quantidade|mensagem|
            | "0"  | "Selecione a quantidade desejada"       |
            | "1"  | "Produto(s) adicionado(s) ao carrinho!" |
            | "9"  | "Produto(s) adicionado(s) ao carrinho!" |
            | "10" | "Produto(s) adicionado(s) ao carrinho!" |
            | "11" | "Máximo de 10 produtos excedido"        |


Critério de aceitação 3: Quando eu clicar no botão “limpar” deve voltar ao estado original

Contexto:
Dado que o cliente da loja deseje recomeçar o processo de esolha de produto

Cenário: Voltar ao estado original ao clicar em "Limpar"
Dado que eu esteja na tela de produto
E tenha escolhido qualquer das opções disponíveis
Então a tela deve voltar ao seu estado original


