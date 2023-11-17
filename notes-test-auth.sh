# Testing Authentication

# Create a new note
pnpm dlx aws-api-gateway-cli-test \
--user-pool-id='<USER_POOL_ID>' \
--app-client-id='<USER_POOL_CLIENT_ID>' \
--cognito-region='<COGNITO_REGION>' \
--identity-pool-id='<IDENTITY_POOL_ID>' \
--invoke-url='<API_ENDPOINT>' \
--api-gateway-region='<API_REGION>' \
--username='admin@example.com' \
--password='Passw0rd!' \
--path-template='/notes' \
--method='POST' \
--body='{"content":"hello world from auth","attachment":"hello_auth.jpg"}'

# Get the note
pnpm dlx aws-api-gateway-cli-test \
--user-pool-id='<USER_POOL_ID>' \
--app-client-id='<USER_POOL_CLIENT_ID>' \
--cognito-region='<COGNITO_REGION>' \
--identity-pool-id='<IDENTITY_POOL_ID>' \
--invoke-url='<API_ENDPOINT>' \
--api-gateway-region='<API_REGION>' \
--username='admin@example.com' \
--password='Passw0rd!' \
--path-template='/notes/<CREATED_NOTE_ID>' \
--method='GET'
