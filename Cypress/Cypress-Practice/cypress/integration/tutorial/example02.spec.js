context('Variables', () => {
    beforeEach(() => {
        cy.visit('/');
        cy.fixture('todos').as('todosFixture');   //va a la carpeta fixture y busca algo con el nombre todos y lo guarda en la variable todosFixture
    });
  
    it('Test 01', () => {
      let x = 5;
      //cy.wrap(x).as("myVar");
      cy.get('.todo-list li').as('items');
      cy.get('.new-todo').type("Something...{enter}");
  
      cy.get('@items').should('have.length', 3);
      cy.get('.todo-list li').should('have.length', 3);
      /*
      cy.get('@myVar')
        .then((element) => {
          cy.log(element)
          //cy.wrap(element).as("myVar2");
        })
        */
    });
  
  
    it('Test 02', () => {
      cy.get("@todosFixture").its("todos").should('have.length', 6)
      cy.get("@todosFixture").then(todos => {   //todos es un elemento JS por el .then
          todos.todos.forEach(todo => {         //el primer todos es de la linea de arriba (puedo poner el nombre que quiero), y el 2do de la propiedad que tiene el objeto todos.json
              cy.get('.new-todo').type(todo + "{enter}")
              cy.wait(3000);
          });
      });
    });
  
  });