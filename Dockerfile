FROM golang:1.14

WORKDIR /go/src/github.com/kotaroooo0/orenocontainer

COPY main.go ./
COPY rootfs ./rootfs
RUN go get -v .
RUN go build -o orenocontainer main.go
