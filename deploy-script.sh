#!/bin/bash
# Wrapper to execute CURL
curl -q -k -X POST -H 'Content-Type: application/json' -H "X-Authentication: $1" https://$2:8170/code-manager/v1/deploys -d '{"deploy-all": true}'
