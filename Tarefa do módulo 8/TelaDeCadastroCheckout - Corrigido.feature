            #language: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que sou cliente da EBAC-SHOP


            Aplicando a Tabela de Cenário dentro do contexto


            Esquema do Cenário: Validando para todos os cenários
            Critério de aceitação 1: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Critério de aceitação 2: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Critério de aceitação 3: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta

            Quando eu preencher os campos obrigatórios <nome>, <sobrenome>, <country>, <endereco>, <cidade>, <cep>, <telefone> e <email>
            Então a <mensagem> deve ser exibida

            Exemplos: |nome|sobrenome|country|endereco|cidade|cep|telefone|email|mensagem|
            | "Richter" | "Belmont" | "Romênia" | "Count Dracul, 66" | "Valáchia"  | "12345-666" | "555555555" | "belmontrichter@konami.jp"      | "Cadastro efetuado com sucesso!"                             |
            | "Alvor"   | "Smith"   | "Skyrim"  | "Principal, s/n"   | "Riverwood" | "12345-543" | "0111406"   | "adagasalvor@bethesda.com"      | "Cadastro efetuado com sucesso!"                             |
            | "Richter" | "Belmont" | "Romênia" | "Count Dracul, 66" | "Valáchia"  | "12345-666" | "555555555" | "belmontvampire.hunter"         | "Formato de e-mail inválido"                                 |
            | ""        | ""        | ""        | ""                 | ""          | ""          | ""          | ""                              | "Por favor, preencha os campos obrigatórios marcados com *!" |
            | ""        | ""        | "Romênia" | "Count Dracul, 66" | "Valáchia"  | "12345-666" | "555555555" | "belmontrichter@vampire.hunter" | "Por favor, preencha os campos obrigatórios marcados com *!" |