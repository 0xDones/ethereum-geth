geth --datadir aula_web --dev --rpc \
            --rpcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" \
            --rpcaddr "0.0.0.0" \
            --rpcport "8545" \
            --rpccorsdomain "*"