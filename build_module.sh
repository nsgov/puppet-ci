#!/bin/bash
MODULE_DIR=/opt/modules
TEMP_DIR=/tmp/modules
SATELLITE_HOST=satellite6.FQDN
REPO_ID=123

/bin/rm -rf $TEMP_DIR
/bin/mkdir $TEMP_DIR
/usr/bin/pulp-puppet-module-builder --working-dir=${TEMP_DIR} --output-dir=${MODULE_DIR} --clean --url=${1} --tag=${2}
/bin/rm -rf /tmp/modules
curl -u $3 -X POST -H 'Content-Type: application/json' --insecure --silent https://${SATELLITE_HOST}/katello/api/repositories/${REPO_ID}/sync > /dev/null
