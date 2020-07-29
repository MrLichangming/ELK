#!/usr/bin/env bash

cur_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${cur_dir}/../_variable.sh

image_NAME="elasticsearch:6.6.2"

build_cmd
