#!/bin/bash
#Script to create all folders needed for mediawiki setup

mkdir -p /var/www/html/{images,upload,cache,config}
rm -rf /opt/mediawiki/{images,uplaod,cache,config}
ln -s /opt/mediawiki/* /var/www/html/