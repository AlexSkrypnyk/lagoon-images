#!/bin/bash
set -e

/harbor/install_cert.sh
exec "/dumb-init" "--" "/clair/clair" "-config" "/etc/clair/config.yaml"
set +e