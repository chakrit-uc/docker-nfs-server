#!/bin/bash
#TEST {

echo "## Current user: `id`"
echo "## Runtime Environment variables {"
set
echo "## }"

echo "## NFSD config summary {"
NFSD_MAIN_CONF="/etc/exports"
echo "[${NFSD_MAIN_CONF}]"
cat "${NFSD_MAIN_CONF}"
echo "## }"

echo "## }"

# }

set -ex

#Start NFSD
exec /usr/bin/ganesha.nfsd -F -L ${GANESHA_LOGFILE} -f ${GANESHA_CONFIG} -N ${VERBOSITY}
