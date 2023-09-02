

Feature: Youtube
  Scenario: Busca no Youtube
    Given Eu visito o "https://www.youtube.com"
    When Eu digito "Zelda" na caixa de pesquisa
    And Eu clico na pesquisa
    Then O texto "Zelda" fica exibido no site "https://www.youtube.com"
