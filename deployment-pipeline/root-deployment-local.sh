echo "Starting local deployment..."
# Ensure the script is run from the correct directory
cd "$(dirname "$0")/.."
# Authenticate with the organization
if [ ! -f "./deployment-pipeline/org-authenticate.sh" ]; then
  echo "Authentication script not found. Please ensure you are in the correct directory."
  exit 1
fi
source ./deployment-pipeline/org-authenticate.sh authenticate_salesforce
