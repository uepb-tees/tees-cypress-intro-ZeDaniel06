Feature: Funcoes diversas do SauceDemo apos logado
    
    Scenario: Fazendo logout
        Given eu estou logado
        When eu clico no menu
        And eu clico em "Logout"
        Then deve ser visto "Login" na tela

    Scenario: Abrindo carrinho
        Given eu estou logado
        When eu clico no carrinho
        Then deve ser visto "Your Cart" na tela

    Scenario: Adicionando produtos no carrinho
        Given eu estou logado
        When eu seleciono um produto de valor "29.99"
        And eu seleciono um produto de valor "49.99"
        And eu clico no carrinho
        Then deve ser visto "Sauce Labs Backpack" na tela
        And deve ser visto "Sauce Labs Fleece Jacket" na tela

    Scenario: Voltando para a lista de produtos
        Given eu estou logado
        When eu clico no carrinho
        And eu clico no menu
        And eu clico em "All Items"
        Then deve ser visto "Products" na tela
        
    Scenario: Zerando meu carrinho
        Given eu estou logado
        When eu seleciono um produto de valor "29.99"
        And eu seleciono um produto de valor "49.99"
        Then deve ser visto "2" no icone do carrinho
        When eu clico no menu
        And eu clico em "Reset App State"
        Then deve sumir o numero do carrinho
    