#!/bin/sh
# Configure module
set -e

SCRIPT_DIR=$(dirname $0)
LICENSES_DIR=${SCRIPT_DIR}/gen-license

#chown -R jboss:root $SCRIPT_DIR
chmod -R ug+rwX $SCRIPT_DIR
chmod ug+x ${LICENSES_DIR}/*

pushd ${LICENSES_DIR}
cp -pr * /
popd