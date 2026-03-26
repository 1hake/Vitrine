#!/bin/bash
set -e

REPO="1hake/Vitrine"

echo "Setting GitHub secrets for $REPO..."

# Non-sensitive defaults
gh secret set DOCKER_USERNAME --repo "$REPO" --body "thegobc"
gh secret set SERVER_HOST --repo "$REPO" --body "92.113.25.5"
gh secret set SSH_USER --repo "$REPO" --body "root"

# Placeholder values — replace these on GitHub
gh secret set DOCKER_PASSWORD --repo "$REPO" --body "REPLACE_ME"
gh secret set SSH_PRIVATE_KEY_NOPW --repo "$REPO" --body "REPLACE_ME"

echo ""
echo "All secrets set for $REPO!"
echo "  DOCKER_USERNAME       = thegobc"
echo "  SERVER_HOST           = 92.113.25.5"
echo "  SSH_USER              = root"
echo "  DOCKER_PASSWORD       = REPLACE_ME  <-- update on GitHub"
echo "  SSH_PRIVATE_KEY_NOPW  = REPLACE_ME  <-- update on GitHub"
