# docker-scratch
Docker scratch image containing a hello world go lang app

### build and run
```bash
docker build -t mini-go .
docker run --rm -p 8080:8080 mini-go
```