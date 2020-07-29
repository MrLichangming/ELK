#!/usr/bin/env bash

# Author: Tim
# Date  : 2018-05-26

export  JAVA_OPTS="
    $JAVA_OPT
    -Dcom.sun.management.jmxremote
    -Dcom.sun.management.jmxremote.port=12345
    -Dcom.sun.management.jmxremote.authenticate=false
    -Dcom.sun.management.jmxremote.ssl=false
    "
export CATALINA_OPTS="
    $CATALINA_OPTS
    -Dcom.sun.management.jmxremote
    -Djava.rmi.server.hostname=$HOSTNAME
    -Dcom.sun.management.jmxremote.port=9999
    -Dcom.sun.management.jmxremote.ssl=false
    -Dcom.sun.management.jmxremote.authenticate=false
    "

cat <<'EOF'>> /etc/profile
export  JAVA_OPTS="
    $JAVA_OPT
    -Dcom.sun.management.jmxremote
    -Dcom.sun.management.jmxremote.port=12345
    -Dcom.sun.management.jmxremote.authenticate=false
    -Dcom.sun.management.jmxremote.ssl=false
    "
EOF

exec "$@"
