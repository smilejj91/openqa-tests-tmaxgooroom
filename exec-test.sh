#!/bin/bash

echo -e "===================="
echo -e "currnet iso list (path : /var/lib/openqa/factory/iso/)"
ls /var/lib/openqa/factory/iso/
echo -e "===================="
read -p 'iso name: ' ISO_NAME
read -p 'distribution :' DISTRI
read -p 'version :' VERSION

if [ -z ${ISO_NAME} ] || [ -z ${DISTRI} ] || [ -z ${VERSION} ]; then
  echo -e "please put arguement"
  exit 1;
fi 

openqa-cli api -X POST isos \
         ISO=${ISO_NAME} \
         DISTRI=${DISTRI} \
         VERSION=${VERSION} \
         FLAVOR=live \
         ARCH=x86_64 \
