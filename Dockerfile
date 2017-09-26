# Multi(two)-stage Go lang build
FROM golang:alpine AS builder

COPY main.go /app/main.go
# build a staticly linked binary targeting linux
RUN cd /app/ && CGO_ENABLED=0 GOOS=linux go build -o helloworld .

# start from scratch
FROM scratch

# copy statically likend binary
COPY --from=builder /app/helloworld .
ENTRYPOINT ["./helloworld"]