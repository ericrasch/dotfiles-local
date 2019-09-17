#!/usr/bin/evn bash
set -e

cp ./settings.json "${HOME}/Library/Application Support/Code/User/"

while read -r EXTENSION; do
  code --install-extension "$EXTENSION"
done < extensions.list

