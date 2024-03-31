beforeEach(() => {
    // root-level hook      //esta afuera de cualquier context o describe
    // runs before every test
    cy.log('Root Before each'); //hace ciertos log e imprime cierta info util a la derecha de cypress runner
  });
  
  context('Hooks', () => {
    before(() => { cy.log('Before: runs once before all tests in the block'); });       //este before corre dentro del scope hooks, porque no está en el root level
    beforeEach(() => { cy.log('Before Each: runs before each test in the block'); });
  
    it('Test 01', () => { });       //tenemos 2 escenarios, test01 y test02
    it('Test 02', () => { });
  
    afterEach(() => { cy.log('After Each: runs after each test in the block'); });
    after(() => { cy.log('After: runs once after all tests in the block'); });
  });

  context('Hooks #2', () => {
   
    it('Test 01', () => { });       //tenemos 2 escenarios, test01 y test02
    it('Test 02', () => { });
  
    });