# SALESFORCE

to athorize the org on codespaces first authorize it on a local vs code new window with salesforce cli and browser
there create json file to generate the sfdx authorization url
use the instance url and access token to authorize the org in the codespaces
use the authorize with session id command 

************************************************************************STEPS TO CREATE JSON FILES WITH ACCESS TOKEN*************************************************************************

Authorize an Org Using Its SFDX Authorization URL
Use an org's Salesforce DX (SFDX) authorization URL to authorize an org in continuous integration (CI) environments, which are fully automated and don’t support the human interactivity of logging into a browser.
Open a terminal (macOS and Linux) or command prompt (Windows) on the computer where you’ve already authorized the org using a Web browser.
Get your org’s SFDX authorization URL and store it in a file by running this command.

*****************************************************************************
sf org display --target-org my-org --verbose --json > authFile.json
*****************************************************************************

The JSON output includes a key called sfdxAuthUrl, whose value is the org’s SFDX authorization URL.
In your CI environment, authorize the org by referencing the authFile.json file with this command.

*****************************************************************************
sf org login sfdx-url --sfdx-url-file authFile.json
*****************************************************************************

*************************************************************************************************************************************************************************************************
