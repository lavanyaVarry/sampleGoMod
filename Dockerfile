FROM golang:latest as builder

# Set the Current Working Directory inside the container
WORKDIR /

COPY . ./

RUN go build && ls -l

