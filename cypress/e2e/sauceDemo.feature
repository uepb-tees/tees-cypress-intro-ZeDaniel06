Feature: Sauce Demo login
    Scenario: Errando a senha
        Given eu entro no site
        When eu escrevo "standard_user" no Username
        And eu escrevo "senhateste" no Password e dou enter
        Then deve ser visto "sadface" na tela