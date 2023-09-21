Feature: Sauce Demo Login
    Scenario: Digitando senha errada
        Given eu entro no site
        When eu escrevo "standard_user" no Username
        And eu escrevo "senhaTeste" no Password e dou enter
        Then deve ser visto "sadface" na tela