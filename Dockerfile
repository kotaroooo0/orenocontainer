# FROM golang:1.14

# WORKDIR /go/src/github.com/kotaroooo0/orenocontainer

# COPY main.go ./
# COPY rootfs ./rootfs
# RUN go get -v .
# RUN go build -o main main.go

FROM golang:1.13-alpine

RUN apk add --update openssl-dev pcre-dev git gcc musl-dev linux-headers sudo

WORKDIR /go/src/github.com/budougumi0617/gsp/ch17/container/
ADD main.go ./main.go
ADD rootfs ./rootfs/
RUN go get -v .
RUN go build main.go
CMD echo "test"
