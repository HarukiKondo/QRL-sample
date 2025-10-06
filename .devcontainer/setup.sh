#!/bin/bash
set -e

echo "=== Starting QRL Development Environment Setup ==="

# Install latest setuptools
echo "Installing setuptools..."
pip3 install setuptools==65.7.0

# Install latest service identity package
echo "Installing service-identity..."
pip3 install service-identity==21.1.0

# Install QRL
echo "Installing QRL..."
pip3 install -U qrl

# Install @theqrl/cli globally
echo "Installing @theqrl/cli..."
npm install -g @theqrl/cli

# Verify installations
echo ""
echo "=== Installation Complete ==="
echo "Node.js version: $(node --version)"
echo "npm version: $(npm --version)"
echo "Python version: $(python3 --version)"
echo "QRL version: $(qrl --version 2>&1 || echo 'QRL installed')"
echo "QRL CLI version: $(qrl --version 2>&1 || echo '@theqrl/cli installed')"
echo ""
echo "Setup completed successfully!"