#!/usr/bin/env bash
set -euo pipefail

DOMAIN="andrespalmab.com"
REMOTE_USER="deploy"
REMOTE_PATH="/var/www/portfolio"

rsync -avz --delete \
  -e "ssh -o IdentitiesOnly=yes" \
  ./ "${REMOTE_USER}@${DOMAIN}:${REMOTE_PATH}/"

echo "✅ Deployed to https://${DOMAIN}"
