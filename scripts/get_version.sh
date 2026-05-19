#!/bin/sh
set -eu

UPSTREAM_OWNER=tailwindlabs
UPSTREAM_REPO=tailwindcss

curl -s https://api.github.com/repos/"$UPSTREAM_OWNER"/"$UPSTREAM_REPO"/releases/latest \
     | jq -r ".tag_name"
