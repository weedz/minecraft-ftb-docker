#!/usr/bin/env bash
# -x prints the executed command to stdout
set -euxo pipefail

if [ -f serverinstall ]; then
    echo "RUN server install"
    ./serverinstall $MOD_ID $VERSION_ID --nojava --auto
    chmod +x start.sh
    echo "eula=true" > eula.txt
    rm serverinstall
fi

ls -la
echo $(pwd)

./start.sh
