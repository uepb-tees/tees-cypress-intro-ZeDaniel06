import {Given, When, Then} from "@badeball/cypress-cucumber-preprocessor";
Given("eu estou logado",()=>{
    const url = Cypress.env('SAUCE_DEMO_URL');
    cy.visit(url);
    cy.get('[data-test="username"]').type("standard_user");
    cy.get('[data-test="password"]').type(`secret_sauce{enter}`);
    cy.get('body').should('contain','Products');
})
When("eu clico no menu",()=>{
    cy.get("#react-burger-menu-btn").click();
})
When("eu clico em {string}",(opcao)=>{
    cy.contains(opcao).click();
})
Then("deve ser visto {string} na tela",(palavra)=>{
    cy.get('body').should('contain',palavra);
})
When("eu clico no carrinho",()=>{
    cy.get('.shopping_cart_link').click();
})
When("eu seleciono um produto de valor {string}",(preco)=>{
    cy.contains(preco).parent().contains("Add to cart").click();
})
Then("deve ser visto {string} no icone do carrinho",(num)=>{
    cy.get('.shopping_cart_badge').should('contain',num);
})
Then("deve sumir o numero do carrinho",()=>{
    cy.get('.shopping_cart_badge').should('not.exist');
})