#!/usr/bin/env bash

cd $(dirname $0)
source ./variables.sh

set -euv

# clear source dir
rm -rf ${source_dir_path}/*
mkdir -p ${source_dir_path}

# download icons
curl -sL -o ${source_dir_path}/google-cloud-icons.zip \
  'https://cloud.google.com/icons/files/google-cloud-icons.zip'

# unzip icon
unzip ${source_dir_path}/google-cloud-icons.zip -d ${source_dir_path}
