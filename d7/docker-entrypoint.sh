#!/bin/sh

# prevent conflicts with existing
rm -rf node_modules

/usr/bin/npm link --unsafe-perm node-sass-glob webpack susy $NPM_PACKAGES

exec "$@"
