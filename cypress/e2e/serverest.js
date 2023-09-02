import {Given,When,Then} from "@badeball/cypress-cucumber-preprocessor";
Given("Eu entro no {string}",(url)=>{
    cy.visit(url);
})
When("Eu clico no github",()=>{
    cy.get('body').contains('github.com').click();
})
Then("o texto github aparece no {string}",(url)=>{
    if (url === "github.com"){
        cy.get('body').should('contain','github');
    }
})