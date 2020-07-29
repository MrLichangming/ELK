#!/usr/bin/env bash

cur_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${cur_dir}/../_variable.sh

image_NAME="zookeeper:3.4.10"

build_cmd
