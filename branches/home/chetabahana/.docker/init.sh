#!/bin/sh
if [ -d ~/.docker/compose ]; then
   cd ~/.docker/compose && docker-compose down --volumes
fi

cd ~/.docker && rm -rf compose
gcloud source repos clone github_chetabahana_compose compose
sh compose/scripts/main.sh
