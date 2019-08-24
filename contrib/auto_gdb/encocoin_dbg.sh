#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.encocoincore/encocoind.pid file instead
encocoin_pid=$(<~/.encocoincore/testnet3/encocoind.pid)
sudo gdb -batch -ex "source debug.gdb" encocoind ${encocoin_pid}
