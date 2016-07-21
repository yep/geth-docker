FROM golang:1.7

# run two commands at once to create less docker filesystem layers
RUN \
  go get github.com/ethereum/go-ethereum/cmd/geth && \
  mkdir /blockchain

VOLUME /blockchain

ENTRYPOINT ["/go/bin/geth", "--datadir=/blockchain"]
