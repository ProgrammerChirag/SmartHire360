

retrieve_metadata() {
    echo "Retrieving metadata from the Salesforce org..."
    # Retrieve metadata from the Salesforce org

    echo "please enter the package.xml folder from package-container (e.g., ./package.xml):"
    read -r package_xml_path
    if [ ! -f "$package_xml_path" ]; then
        echo "Package XML file not found at the specified path. Please check the path and try again."
        exit 1
    fi

    echo "Retrieving metadata using the package.xml file at $package_xml_path"
    sf project retrieve start --manifest "$package_xml_path" 
    if [ $? -ne 0 ]; then
        echo "Metadata retrieval failed. Please check the package.xml file and try again."
        exit 1
    fi
    echo "Metadata retrieval successful. Metadata has been saved to the local project directory."
    echo "You can now proceed with the next steps in your deployment pipeline."
}

"$1"