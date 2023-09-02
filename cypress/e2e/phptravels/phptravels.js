import {Given, When, Then} from "@badeball/cypress-cucumber-preprocessor";

Given("eu entro no site {string}",(url)=>{
    cy.visit(url);
})
When("eu clico em {string}",(texto)=>{
    cy.get("header").contains(texto).click();
})
Then("pode ser visto {string} em seguida",(texto)=>{
    cy.get('body').should('contain',texto);
})
