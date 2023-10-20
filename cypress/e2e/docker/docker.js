import {Given, When, Then} from '@badeball/cypress-cucumber-preprocessor';

Given("eu visito o container",()=>{
    const url=Cypress.env('LOCALHOST');
    cy.visit(url);
});
When("eu clico em {string}",(botao)=>{
    cy.contains(botao).click();
})
Then("deve ser visto {string}",(frase)=>{
    cy.get('body').should('contain',frase);
})
When("eu digito {string} no login",(login)=>{
    cy.get('#campologin').type(login);
})
When("eu digito {string} na senha",(senha)=>{
    cy.get('#camposenha').type(senha);
})