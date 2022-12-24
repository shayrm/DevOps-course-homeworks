#!/bin/bash
K3S_BIN=/usr/local/bin/k3s
VERSION=$1
if [ -z $VERSION ]; then
    echo "Please provide k3s version"
    exit 1
fi
TMP=$(mktemp)
OLD_VERSION=$(kubectl version -o yaml|grep gitVersion|uniq|awk '{print $2}')
curl -L https://github.com/k3s-io/k3s/releases/download/$VERSION/k3s -o $TMP && \
{
    # Replacing
    sudo mv ${K3S_BIN}{,-${OLD_VERSION}}
    sudo mv $TMP $K3S_BIN
    sudo chmod +x $K3S_BIN
    sudo chown root:root $K3S_BIN
    sudo systemctl restart k3s
} || echo "Failed to download k3s binary for $VERSION" 