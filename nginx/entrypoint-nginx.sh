#!/bin/bash

# This script takes ENV variables defined in docker-compose and replaces the 
# corresponding ${VARIABLE} in proxy-template.conf with real values

vars=$(compgen -A variable)
subst=$(printf '${%s} ' $vars)
envsubst "$subst" < /etc/nginx/conf.d/vhost.template > /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'

