This is a development repo, I tryied to build my own image to run Geth on.

# Running Geth on ethereum's imagem (Limited shell)
```sh
docker run -d --name ethereum-node -v ~/development/ethereum:/srv \
-p 8545:8545 -p 30303:30303 -w="/srv" ethereum/client-go \
--datadir aula_web --dev --rpc \
--rpcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" \
--rpcaddr "0.0.0.0" \
--rpcport "8545" \
--rpccorsdomain "*" 
```

# Dockerfile  

- Building container:  
```sh
$ docker build -t ethereum-geth-vm .
```

- Running container:  
```sh
docker run -it -p 8545:8545 -p 30303:30303 -p 9000:9000 \
-v ~/development/ethereum:/srv -w="/srv" --name ethereum-geth ethereum-geth-vm bash
```

- Get container bash:  

```sh
docker exec -it ethereum-geth-vm bash
```

- Starting geth(On bash):  

```sh
geth --datadir aula_web --dev --rpc \
--rpcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" \
--rpcaddr "0.0.0.0" \
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
--rpcaddr "0.0.0.0" \
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

Open Zepellin -> Token ERC20

ABI is the interface, I dont need the ABI for a ERC20 token because it implements the interface,
I just need the contractTx


Solidity Modifiers

    payable -> makes the function accept tokens

pragma solidity 0.4.24;

contract PersonTest {
    
    address public owner;
    uint public created_at;
    uint public id_person;
    
    string public name;
    string public email;
    
    event LogUpdateEmail(address _addressPerson, string _newEmail);
    
    constructor(string _name, string _email) public {
        name = _name;
        email = _email;
        owner = msg.sender;
        created_at = now; // Comes from miner time
    }
}