/// <reference types="cypress" />

context('Example 01', () => {
    beforeEach(() => {
        cy.visit('/');  //navegar a la pagina ppal
    });

    it('Test #1', () => {   //Nombre del test
        cy.get('.new-todo').type("My long task #1{enter}"); //.get recibe un locator (que es un localizador CSS)
        cy.get('.new-todo').type("My long task #2{enter}"); //.type escribe, y el enter entre parentesis es decirle que aprete el enter
        cy.contains('Completed').click();   //obtiene un elemento por su nombre, y ademas tiene un parámetro adicional que nos permite obtener un elem con un texto con un determinado localizador
        cy.contains('Active').click();  //y hacemos click en ese lemento
    });

    it('Test #2: Select using CSS selectors', () => {
        cy.get('.new-todo').type("My long task #1{enter}");
        cy.get('.new-todo').type("My long task #2{enter}");
        cy.get(':nth-child(2) > .view > .toggle').click();  //aparentemente el padre es togle, hijo directo: view, hijo directo numero2
        cy.contains('Completed').click();   //marca como completada esa tarea
    });

    it('Test #3: Select using Text Content', () => {
        cy.get('.new-todo').type("My long task #1{enter}");
        cy.get('.new-todo').type("My long task #2{enter}");
        cy.get('label:contains("My long task #1")') //con css no se puede ir de hijos a padres, pero usando la fc de abajo si se puede
            .parent().find('.toggle')   //va al padre del selector en que estamos y busca la clase togle
            .click();
        cy.contains('Completed').click();
    });

    
    //it.only('Test #4: Assertions', () => {
    //con it only solo corremos este test por si queremos probar algo puntual y sabemos que el resto funciona
    //luego hay que borrarlo
    
    it('Test #4: Assertions', () => {
        cy.get('.todo-list li').should('have.length', 2);   //valida que tenga un elemento
        cy.get('.new-todo').type("My long task #1{enter}");
        cy.get('.todo-list li').should('have.length', 3);
    
        cy.get('label:contains("My long task #1")')
            .parent().find('.toggle').click();
        cy.get('label:contains("My long task #1")')
            .parent().parent()
            .should('have.class', 'completed');
      });
    
    it('Test #5: Reversing the Default Assertion', () => {
        cy.get('button.close').should('not.exist'); //el boton no existe por lo que esta assersion pasa, de esta forma invertimos el assertion por defecto
        cy.get('button.close');     //y esta no pasa
    });




});