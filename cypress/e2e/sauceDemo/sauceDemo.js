import {Given, When, Then} from "@badeball/cypress-cucumber-preprocessor";
Given("eu entro no site",()=>{
    cy.visit('https://www.saucedemo.com/');
})
When("eu escrevo {string} no Username",(login)=>{
    cy.get('[data-test="username"]').type(login);
})
When("eu escrevo {string} no Password e dou enter",(senha)=>{
    cy.get('[data-test="password"]').type(`${senha}{enter}`);
})
Then("deve ser visto {string} na tela",(texto)=>{
    cy.get('body').should('contain',texto);
})
