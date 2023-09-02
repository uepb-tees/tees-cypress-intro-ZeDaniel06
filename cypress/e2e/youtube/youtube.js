import {Given, When, Then} from "@badeball/cypress-cucumber-preprocessor";

Given("Eu visito o {string}",(site)=>{
    let url = site;
    cy.visit(url);
});
When("Eu digito {string} na caixa de pesquisa",(texto)=>{
    cy.get('#search-input > #search').type(texto);
})
When("Eu clico na pesquisa",()=>{
    cy.get('#search-icon-legacy').click();
})
Then("O texto {string} fica exibido no site {string}",(texto,url)=>{
    if (url==="https://www.youtube.com"){
        cy.get('body').should('contain',texto);
    }else{

    }
})

