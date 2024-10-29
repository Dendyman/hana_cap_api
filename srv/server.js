const cds = require("@sap/cds");
const cors = require("cors");

cds.on("bootstrap", (app) => {
    app.use(cors()); // This will allow CORS for all routes
});

module.exports = cds.server;