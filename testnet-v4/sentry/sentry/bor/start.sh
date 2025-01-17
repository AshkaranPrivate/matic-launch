#!/usr/bin/env sh

set -x #echo on

BOR_DIR=${BOR_DIR:-~/.bor}
DATA_DIR=$BOR_DIR/data

bor --datadir $DATA_DIR \
   --port 30303 \
  --http --http.addr '0.0.0.0' \
  --ws --ws.addr '0.0.0.0' \
  --http.vhosts '0.0.0.0' \
  --http.corsdomain '*' \
  --http.port 8545 \
  --ipcpath $DATA_DIR/bor.ipc \
  --http.api 'eth,net,web3,txpool,bor' \
  --syncmode 'full' \
  --networkid '80001' \
  --miner.gaslimit '30000000' \
  --txpool.nolocals \
  --txpool.accountslots 16 \
  --txpool.globalslots 131072 \
  --txpool.accountqueue 64 \
  --txpool.globalqueue 131072 \
  --txpool.lifetime '1h30m0s' \
  --maxpeers 50 \
  --metrics \
  --pprof --pprof.port 7071 --pprof.addr '0.0.0.0'
  
