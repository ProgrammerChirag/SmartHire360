echo "Initiating bash execution, please wait..."


#!/bin/bash
authenticate_salesforce() {
    # Function to authenticate to Salesforce org
    echo "Authenticating to Salesforce org..."
    echo "please enter your salesforce org Alias name (e.g., smarthire360):"
    read -r org_alias
    if [ -z "$org_alias" ]; then
        echo "Alias name cannot be empty. Please provide a valid alias."
        exit 1
    fi
    # Authenticate to the Salesforce org using the web login method
    sf auth login web --set-default  --alias "$org_alias"
    if [ $? -ne 0 ]; then
    echo "Authentication failed. Please check your credentials and try again."
    exit 1
    fi
    echo "Authentication successful. Default org set to 'smarthire360'."
    # Check if the authentication was successful
}

"$1"