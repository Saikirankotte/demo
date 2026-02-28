#!/bin/bash

set -e

echo "Updating system..."
sudo apt update -y

echo "Installing curl..."
sudo apt install -y curl

echo "Installing k3s..."
curl -sfL https://get.k3s.io | sh -

echo "Checking node status..."
sudo k3s kubectl get nodes

echo "Cluster setup complete!"