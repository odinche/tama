## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```


```shell 
forge script script/Base.s.sol:BaseScript --rpc-url $SEPOLIA_RPC_URL --broadcast --verify -vvvv
```

Some bastard's deployment of uniswap v2 router 
https://sepolia.etherscan.io/address/0xC532a74256D3Db42D0Bf7a0400fEFDbad7694008#code

https://www.reddit.com/r/ethdev/comments/13se2pu/uniswap_v2_router_factory_on_sepolia_test_network/?rdt=33882