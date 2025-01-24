# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)

to athorize the org on codespaces first authorize it on a local vs code new window with salesforce cli and browser there create json file to generate the sfdx authorization url use the instance url and access token to authorize the org in the codespaces use the authorize with session id command

STEPS TO CREATE JSON FILES WITH ACCESS TOKEN*

Authorize an Org Using Its SFDX Authorization URL Use an org's Salesforce DX (SFDX) authorization URL to authorize an org in continuous integration (CI) environments, which are fully automated and don’t support the human interactivity of logging into a browser. Open a terminal (macOS and Linux) or command prompt (Windows) on the computer where you’ve already authorized the org using a Web browser. Get your org’s SFDX authorization URL and store it in a file by running this command.

sf org display --target-org my-org --verbose --json > authFile.json

The JSON output includes a key called sfdxAuthUrl, whose value is the org’s SFDX authorization URL. In your CI environment, authorize the org by referencing the authFile.json file with this command.

sf org login sfdx-url --sfdx-url-file authFile.json

