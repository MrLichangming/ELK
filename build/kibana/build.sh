#!/usr/bin/env bash

cur_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${cur_dir}/../_variable.sh

image_NAME="kibana:6.6.1"

build_cmd
