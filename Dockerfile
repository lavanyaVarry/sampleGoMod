FROM docker.io/golang:latest as builder

# Set the Current Working Directory inside the container
RUN mkdir /build

ADD . /build/

WORKDIR /build

RUN go build -o main .

FROM dockerhub.cisco.com/nextgen-cpo-docker-dev/aobase:1.0-hardened-alpine3.10.3

COPY --from=builder /build/main /app/

WORKDIR /app

CMD ["./main"]