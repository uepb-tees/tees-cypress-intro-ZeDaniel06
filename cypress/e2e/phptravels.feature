Feature: PhpTravels
    Scenario: Entrando na pagina de passagens aéreas
        Given eu entro no site "https://phptravels.net"
        When eu clico em "Flights"
        Then pode ser visto "Featured Flights" em seguida
    Scenario: Entrando na pagina de hoteis
        Given eu entro no site "https://phptravels.net"
        When eu clico em "Hotels"
        Then pode ser visto "Featured Hotels" em seguida
        