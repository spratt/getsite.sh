#!/bin/bash
SITE=$1
DOMAIN=${1%%/*}
wget \
     --recursive \
     --no-clobber \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --domains $DOMAIN \
     --no-parent \
	$SITE
