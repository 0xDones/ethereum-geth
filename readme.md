# Dockerfile  

- Building container:  
```sh
$ docker build -t ethereum-geth-vm .
```

- Running container:  
```sh
docker run -it -p 8545:8545 -p 30303:30303 -e DATA_DIR=aula_web \
-v /home/ethereum:/srv -w="/srv" --name ethereum-geth ethereum-geth-vm bash
```

- Get container bash:  

```sh
docker exec -it ethereum-geth-vm bash
```

- Starting geth(On bash):  

```sh
geth --datadir $DATA_DIR --dev --rpc \
--rpcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" \
--rpcaddr "localhost" \
--rpcport "8545" \
--rpccorsdomain "*" 
```

# Or run using Docker Composer  

- Starting service:  
```sh
$ docker-compose up -d
```

# Geth  

Execute this commands inside the container or on your local env  
- Starting geth on dev mode  

```sh
geth --datadir aula_web --dev --rpc \
--rpcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" \
--rpcaddr "localhost" \
--rpcport "8545" \
--rpccorsdomain "*" 
```

- Enabling WebSocket:  
```sh
-ws Enable the WS-RPC server
--wsaddr value WS-RPC server listening interface (default: "localhost")
--wsport value WS-RPC server listening port (default: 8546)
--wsapi value API's offered over the WS-RPC interface 
```