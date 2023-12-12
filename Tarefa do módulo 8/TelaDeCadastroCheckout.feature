            #language: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Critério de aceitação 1: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos

            Contexto:
            Dado que sou cliente da EBAC-SHOP

            Cenário: Cadastro concluído com os dados obrigatórios preenchidos
            Quando eu preencher os campos obrigatórios
            E clicar em finalizar compra
            Então a mensagem "Cadastro efetuado com sucesso!" deve ser apresentada

            Critério de aceitação 2: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro

            Cenário: Cadastro preenchido com formato de e-mail inválido
            Quando eu preencho o campo respectivo com e-mail em formato inválido
            E tentar concluir o cadastro
            Então a mensagem de erro "Formato de e-mail inválido" deve ser exibida

            Critério de aceitação 3: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta

            Cenário: Tentativa de cadastro com campos vazios
            Quando não são preenchidos os campos obrigatórios para cadastro
            Então exibe-se a mensagem de aviso "Por favor, preencha os campos obrigatórios marcados com *!"


            Aplicando a Tabela de Cenário dentro do contexto


            Esquema do Cenário: Vários cadastros válidos


            Quando eu preencher os campos obrigatórios <nome>, <sobrenome>, <country>, <endereco>, <cidade>, <cep>, <telefone> e <email>
            Então a <mensagem> deve ser exibida

            Exemplos: |nome|sobrenome|country|endereco|cidade|cep|telefone|email|mensagem|
            | "Alberto"  | "Schnaps"     | "Brasil"  | "Poncho Verde, 20"               | "Três Coroas" | "95660-000" | "33336666"  | "aschnaps@tc.com"            | "Cadastro efetuado com sucesso!"  |
            | "Richter"  | "Belmont"     | "Romênia" | "Count Dracul, 66"               | "Valáchia"    | "12345-666" | "555555555" | "belmontrichter@konami.jp"   | "Cadastro efetuado com sucesso!"  |
            | "Alvor"    | "Smith"       | "Skyrim"  | "Principal, s/n"                 | "Riverwood"   | "12345-543" | "0111406"   | "adagasalvor@bethesda.com"   | "Cadastro efetuardo com sucesso!" |
            | "Farengar" | "Secret-Fire" | "Skyrim"  | "Corte de Jarl Balgruuf, sala 1" | Whiterun"     | "331556"    | "1239875"   | "dragonsecrets@bethesda.com" | "Cadastro efetuado com sucesso!"  |


            Esquema do Cenário: Cadastros preenchido com formato de e-mail inválido


            Quando eu preencher os campos obrigatórios <nome>, <sobrenome>, <country>, <endereco>, <cidade>, <cep>, <telefone>
            E o campo de <email> com formato inválido
            Então a mensagem de erro <erroformat> deve ser exibida

            Exemplos: |nome|sobrenome|country|endereco|cidade|cep|telefone|email|erroformat|
            | "Alberto"  | "Schnaps"     | "Brasil"  | "Poncho Verde, 20"               | "Três Coroas" | "95660-000" | "33336666"  | "aschnaps.tc.com.br"            | "Formato de e-mail inválido" |
            | "Richter"  | "Belmont"     | "Romênia" | "Count Dracul, 66"               | "Valáchia"    | "12345-666" | "555555555" | "belmontrichter.vampire.hunter" | "Formato de e-mail inválido" |
            | "Alvor"    | "Smith"       | "Skyrim"  | "Principal, s/n"                 | "Riverwood"   | "12345-543" | "0111406"   | "@facasalvor"                   | "Formato de e-mail inválido" |
            | "Farengar" | "Secret-Fire" | "Skyrim"  | "Corte de Jarl Balgruuf, sala 1" | Whiterun"     | "331556"    | "1239875"   | "spellsandmagic.com"            | "Formato de e-mail inválido" |


            Esquema do Cenário: Tentativa de cadastro com campos vazios


            Quando eu deixar os campos obrigatórios <nome>, <sobrenome>, <country>, <endereco>, <cidade>, <cep>, <telefone> e <email> em branco
            Então o alerta de erro <alertempty> deve ser exibido

            Exemplos: |nome|sobrenome|country|endereco|cidade|cep|telefone|email|alertempty|
            | ""         | ""            | ""        | ""                               | ""          | ""          | ""          | ""                              | "Por favor, preencha os campos obrigatórios marcados com *!" |
            | ""         | ""            | "Romênia" | "Count Dracul, 66"               | "Valáchia"  | "12345-666" | "555555555" | "belmontrichter@vampire.hunter" | "Por favor, preencha os campos obrigatórios marcados com *!" |
            | "Alvor"    | "Smith"       | "Skyrim"  | "Principal, s/n"                 | "Riverwood" | ""          | ""          | "@facasalvor@behtesda.com"      | "Por favor, preencha os campos obrigatórios marcados com *!" |
            | "Farengar" | "Secret-Fire" | "Skyrim"  | "Corte de Jarl Balgruuf, sala 1" | Whiterun"   | "331556"    | "1239875"   | ""                              | "Por favor, preencha os campos obrigatórios marcados com *!" |
