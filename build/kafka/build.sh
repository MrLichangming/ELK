#!/usr/bin/env bash

cur_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${cur_dir}/../_variable.sh

image_NAME="kafka:2.0.0"

build_cmd
