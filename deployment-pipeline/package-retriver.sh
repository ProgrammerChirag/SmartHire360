

retrieve_metadata() {
    echo "Retrieving metadata from the Salesforce org..."
    # Retrieve metadata from the Salesforce org

    echo "please enter the package.xml folder from package-container (e.g., ./package.xml):"
    read -r package_xml_path

    echo "Retrieving metadata using the package.xml file at $package_xml_path"
    sf project retrieve start --manifest "$package_xml_path" 
    echo "Metadata retrieval successful. Metadata has been saved to the local project directory."
    echo "You can now proceed with the next steps in your deployment pipeline."
}

retrieve_metadata "$1"