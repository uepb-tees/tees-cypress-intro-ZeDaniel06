Feature: Sauce Demo Login

    Scenario: Digitando senha errada
        Given eu entro no site
        When eu escrevo "standard_user" no Username
        And eu escrevo "senhaTeste" no Password e dou enter
        Then deve ser visto "Username and password do not match any user in this service" na tela
    Scenario: Usuário bloqueado
        Given eu entro no site
        When eu escrevo "locked_out_user" no Username
        And eu escrevo "secret_sauce" no Password e dou enter
        Then deve ser visto "Sorry, this user has been locked out" na tela
    Scenario: Usuário logado
        Given eu entro no site
        When eu escrevo "standard_user" no Username
        And eu escrevo "secret_sauce" no Password e dou enter
        Then deve ser visto "Products" na tela