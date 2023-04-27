const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    baseUrl: 'http://localhost:8023/ords/r/sample_customers/sample_customers/',
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
    env: {
      username: "TEST_USER",
      password: "E"
    }
  },
});
