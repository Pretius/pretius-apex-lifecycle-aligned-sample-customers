/// <reference types="cypress" />

// This Test logs in to APEX and logs out

// Run as UNIX
// CYPRESS_username=TEST_USER
// CYPRESS_password=E
// npx cypress run --config baseUrl=http://localhost:8023/ords/r/sample_customers/sample_customers/

// Run as Windows
// SET CYPRESS_username=TEST_USER
// SET CYPRESS_password=E
// npx cypress run --config baseUrl=http://193.122.52.78:8023/ords/r/sample_customers/sample_customers/

describe('Sample Customers Smoke Test', () => {
    beforeEach(() => {
        const baseUrl = Cypress.config('baseUrl');
        // Cypress starts out with a blank slate for each test
        // so we must tell it to visit our website with the `cy.visit()` command.
        // Since we want to visit the same URL at the start of all our tests,
        // we include it in our beforeEach function so that it runs before each test
        cy.visit(baseUrl + 'login')
    })

    it('Sign-in, Check the Cards, Sign-out', () => {

        // Fetch env variables username/password
        const username = Cypress.env('username')
        const password = Cypress.env('password')

        // Type them in the sign-in Page
        cy.get('#P101_USERNAME').type(username)
        cy.get('#P101_PASSWORD').type(password, { log: false })
        expect(username, 'username was set').to.be.a('string').and.not.be.empty

        // Click Sign-in and confirm we are on the dashboard
        cy.get("button:contains('Sign In')").click()
        cy.url().should('include', '/sample_customers/customers')

        // Check if one of the records is present
        cy.get('#cards_region').should("contain", "Illumina Biotech")

        // Sign out
        cy.get(".t-NavigationBar-item.has-username button").click();
        cy.get(".a-Menu-label:contains('Sign Out')").click()
        cy.url().should('include', '/sample_customers/login')

    })
})
