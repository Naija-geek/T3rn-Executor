# t3rn Executor Setup

This repository contains instructions and resources to set up the t3rn Executor for processing transaction orders on multiple networks.

## Quick Start

1. **Download the Binary**  
   ```bash
   wget https://github.com/t3rn/executor-release/releases/download/v0.28.0/executor-linux-v0.28.0.tar.gz
   tar -xvf executor-linux-v0.28.0.tar.gz
   cd executor/executor/bin
   ```

2. **Set Environment Variables**  
   ```bash
   export NODE_ENV=testnet
   export LOG_LEVEL=debug
   export LOG_PRETTY=false
   export EXECUTOR_PROCESS_ORDERS=true
   export EXECUTOR_PROCESS_CLAIMS=true
   export PRIVATE_KEY_LOCAL=your_private_key_here
   export ENABLED_NETWORKS='arbitrum-sepolia,base-sepolia,optimism-sepolia,l1rn'
   export EXECUTOR_PROCESS_PENDING_ORDERS_FROM_API=false
   ```

3. **Run the Executor**  
   ```bash
   ./executor
   ```

## Prerequisites
- Linux or macOS
- `wget` and `tar` installed

## Useful Links
- [Full Documentation](https://docs.t3rn.io/executor/become-an-executor/binary-setup)
- [t3rn Discord](https://discord.gg/)
- [Latest Releases](https://github.com/t3rn/executor-release/releases/)

---

For further assistance, refer to the full documentation or reach out to the community!
