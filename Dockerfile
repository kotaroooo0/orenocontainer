FROM golang:1.14

RUN go get github.com/opencontainers/runc/libcontainer \
    golang.org/x/sys/unix

WORKDIR /go/src/github.com/kotaroooo0/orenocontainer

COPY main.go ./
COPY rootfs ./rootfs
RUN go get -v .
RUN go build main.go

ENTRYPOINT ["./main"]
