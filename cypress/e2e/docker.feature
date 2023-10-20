Feature: Login feito com react em docker

    Background:
        Given eu visito o container

    Scenario: Deixando campos vazios
        When eu clico em "Enviar"
        Then deve ser visto "Preencha todos os campos de login"
    Scenario: Errando os dados
        When eu digito "eml" no login
        And eu digito "snha" na senha
        And eu clico em "Enviar"
        Then deve ser visto "Dados incorretos"
    Scenario: Logando corretamente
        When eu digito "email" no login
        And eu digito "senha" na senha
        And eu clico em "Enviar"
        Then deve ser visto "Logado!"
    Scenario: Deslogando
        When eu digito "email" no login
        And eu digito "senha" na senha
        And eu clico em "Enviar"
        Then deve ser visto "Logado!"
        When eu clico em "Deslogar"
        Then deve ser visto "Login"