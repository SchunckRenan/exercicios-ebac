            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Critério de aceitação 1: Seleções de cor, tamanho e quantidade devem ser obrigatórios

            Cenário: Cliente escolhe somente o tamanho e a cor do produto
            Dado que sou cliente logado na EBAC-SHOP com determinado produto escolhido
            Quando selecionar o tamanho "XL"
            E a cor "red"
            Então a mensagem de alerta "Selecione a quantidade desejada" deve ser exibida


            Aplicando o Contexto aos cenários de teste


            Contexto:
            Dado que sou cliente logado na EBAC-SHOP com determinado produto escolhido

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



            Aplicando a Tabela de Cenário dentro do contexto (Critério de aceitação 2: "Deve permitir apenas 10 produtos por venda" incluído na tabela)


            Esquema do Cenário: Validando cenários variados

            Quando eu escolher o <tamanho> e a <cor> do produto
            E eu escolher a <quantidade> desejada de produtos
            Então deve-se exibir a  <mensagem>

            Exemplos: |tamanho|cor|quantidade|mensagem|
            | "XS" | "orange" | "1"  | "Produto(s) adicionado(s) ao carrinho!"        |
            | "M"  | "red"    | "10" | "Produto(s) adicionado(s) ao carrinho!"        |
            | "L"  | " "      | " "  | "Selecione a cor e a quantidade desejada."     |
            | " "  | "orange" | " "  | "Selecione o tamanho e a quantidade desejada." |
            | " "  | " "      | "5"  | "Selecione o tamanho e a cor desejada."        |
            | "S"  | "blue"   | "11" | "Quantidade máxima de 10 itens excedida"       |


Critério de aceitação 3: Quando eu clicar no botão “limpar” deve voltar ao estado original

Contexto:
Dado que o cliente da loja deseje recomeçar o processo de esolha de produto

Cenário: Voltar ao estado original ao clicar em "Limpar"
Dado que eu esteja na tela de produto
E tenha escolhido qualquer das opções disponíveis
Então a tela deve voltar ao seu estado original