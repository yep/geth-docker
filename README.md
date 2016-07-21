geth: go-ethereum on docker
===========================

This container compiles [geth](https://github.com/ethereum/go-ethereum), the official [Ethereum](https://ethereum.org) client written in the [go](https://golang.org) programming language.

Usage
-----

It is recommended to store blockchain data on your local harddisk, not inside the container. Replace `/path/to/blockchain` with the location you want to use.

    docker run -v /path/to/blockchain:/blockchain yep1/geth

Append parameters to geth as usual. For example, you can use the `--fast` parameter to only download block headers. This is recommened on first start of the client, otherwise download of the blockchain takes a very long time.

    docker run -v /path/to/blockchain:/blockchain yep1/geth --fast

