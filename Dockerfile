FROM golang:1.14

RUN go get github.com/opencontainers/runc/libcontainer \
    golang.org/x/sys/unix

COPY main.go main.go

ENTRYPOINT ["go", "run", "main.go"]
