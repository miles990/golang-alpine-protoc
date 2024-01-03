FROM golang:1.21.5-alpine

RUN apk update && apk add --no-cache protobuf git rsync
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.31
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2
