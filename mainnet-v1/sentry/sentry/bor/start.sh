#!/usr/bin/env sh

set -x #echo on

BOR_DIR=${BOR_DIR:-~/.bor}
DATA_DIR=$BOR_DIR/data

bor --datadir $DATA_DIR \
  --bor-mainnet \
  --snapshot false \
  --http --http.addr '0.0.0.0' \
  --http.vhosts '*' \
  --http.corsdomain '*' \
  --http.port 8545 \
  --ws \
  --ws.addr '0.0.0.0' \
  --ipcpath $DATA_DIR/bor.ipc \
  --http.api 'eth,net,web3,txpool,bor' \
  --syncmode 'full' \
  --networkid '137' \
  --miner.gasprice '30000000000' \
  --miner.gaslimit '30000000' \
  --txpool.nolocals \
  --txpool.accountslots 16 \
  --txpool.globalslots 32768 \
  --txpool.accountqueue 16 \
  --txpool.globalqueue 32768 \
  --txpool.pricelimit '30000000000' \
  --txpool.lifetime '1h30m0s' \
  --gpo.ignoreprice '30000000000' \
  --maxpeers 50 \
  --metrics \
  --pprof --pprof.port 7071 --pprof.addr '0.0.0.0'
  
