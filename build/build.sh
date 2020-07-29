#!/usr/bin/env bash

buil_list="
    ./centos-base/build.sh
    ./centos-jre8/build.sh
    ./zookeeper/build.sh
    ./kafka/build.sh
    ./logstash/build.sh
    ./elasticsearch/build.sh
    ./kibana/build.sh
"

for i in $buil_list; do
    echo -------------------- $i
    if [[ -f "$i" ]]; then
        ( source $i )
    fi
done