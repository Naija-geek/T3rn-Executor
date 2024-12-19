#!/bin/bash

# Define variables
EXECUTOR_URL="https://github.com/t3rn/executor-release/releases/download/v0.28.0/executor-linux-v0.28.0.tar.gz"
EXECUTOR_ARCHIVE="executor-linux-v0.28.0.tar.gz"
EXECUTOR_DIR="executor"

# Download the executor
echo "Downloading executor..."
wget $EXECUTOR_URL -O $EXECUTOR_ARCHIVE

# Extract the archive
echo "Extracting executor..."
tar -xvf $EXECUTOR_ARCHIVE

# Navigate to the bin directory
cd $EXECUTOR_DIR/executor/bin || exit

# Prompt for the private key
echo -n "Enter your private key (input will be hidden): "
read -s PRIVATE_KEY_LOCAL
echo

# Set environment variables
echo "Setting environment variables..."
export NODE_ENV=testnet
export LOG_LEVEL=debug
export LOG_PRETTY=false
export EXECUTOR_PROCESS_ORDERS=true
export EXECUTOR_PROCESS_CLAIMS=true
export PRIVATE_KEY_LOCAL="$PRIVATE_KEY_LOCAL"
export ENABLED_NETWORKS="arbitrum-sepolia,base-sepolia,optimism-sepolia,l1rn"
export EXECUTOR_PROCESS_PENDING_ORDERS_FROM_API=false

# Run the executor
echo "Starting executor..."
./executor
