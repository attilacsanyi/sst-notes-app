
# Create a user
aws cognito-idp sign-up \
  --region <COGNITO_REGION> \
  --client-id <USER_POOL_CLIENT_ID> \
  --username admin@example.com \
  --password Passw0rd!

# Verify the user
aws cognito-idp admin-confirm-sign-up \
  --region <COGNITO_REGION> \
  --user-pool-id <USER_POOL_ID> \
  --username admin@example.com
