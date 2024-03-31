context('Wikipedia', () => {
    beforeEach(() => {
        cy.visit('/');  //navegar a la pagina ppal
    });

    it('Test 1 - BddExpectation', () => {   //Nombre del test
        cy.get('#www-wikipedia-org #searchInput').type("Globant {enter}")

        cy.get(".mediawiki #firstHeading").should("be.visible")

        cy.get(".mediawiki #firstHeading").should("contain", "Globant")
        
    });

    it('Test 2 - Implicit Wait', () => {   //Nombre del test
        cy.get('#www-wikipedia-org #searchInput').type("Globant {enter}")

        cy.wait(6000)

        cy.get(".mediawiki #firstHeading").should("be.visible")

        cy.get(".mediawiki #firstHeading").should("contain", "Globant")
        
    });
});
