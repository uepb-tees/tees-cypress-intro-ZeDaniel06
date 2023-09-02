Feature: Serverest
    Scenario: Visitando github do Serverest
        Given Eu entro no "https://serverest.dev/"
        When Eu clico no github
        Then o texto github aparece no "github.com"