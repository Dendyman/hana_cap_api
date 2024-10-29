# Quick Start with API Access to HANA DB Table using CAP

This project is designed to help you quickly set up a basic API for OData access to a table deployed in HANA DB.

The project includes the following SAP CAP (Cloud Application Programming) definitions:

1. **Table Definition** - Located in `/db/schema.db`.
2. **API Service Name** - Defined in `/srv/services.cds`.
3. **CORS Enablement** - Allows any origins (`access-control-allow-origin: *`) in `srv/server.js`.
4. **Table Creation** - Configured for a HANA HDI container in `package.json`.

> **Note**: Authentication is disabled, and CORS protection allows any origins (`*`) for simplicity and ease of integration. This configuration is not recommended for production use but simplifies usage in other SAP BTP applications, such as SAP Build Apps.

### Prerequisites

Ensure that the following entitlements and services are enabled before deploying the project:

1. **HANA Cloud Instance and HDI Containers** - [Helpful learning guide](https://developers.sap.com/group.hana-cloud-cap-setup.html)
2. **Cloud Foundry (CF) Environment** - Including a Cloud Foundry space where the project will be deployed.
3. **Create a CAP Project in Business Application Studio** - Select additional HANA-related optional modules.

For detailed guidance on preparing the environment, see the developer learning guide: [Set Up SAP HANA Cloud and CAP Project](https://developers.sap.com/group.hana-cloud-cap-setup.html).

## Installation and Deployment Steps

1. Crate a project by cloning this repository in Business Application Studio.
2. Install dependencies:

   ```bash
   npm install
3. Run the following command to install hana-cli:

   ```bash
   npm install hana-cli
   
4. Run the following command to install MTA builder app:

   ```bash
   npm install -g mbt  

5. Log in to your target CF environment using Business Application Studio functionality or using the following command in Terminal:
   
   ```bash
   cf login -a <URL to CF> --sso

6. Run the following command to install MTA builder app:

   ```bash
   npm update --package-lock-only
   cds build --production
   mbt build -t gen --mtar mta.tar
   cf deploy gen/mta.tar

