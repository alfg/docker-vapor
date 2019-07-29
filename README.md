# Docker Vapor
A simple Docker Vapor example.

[![Docker Stars](https://img.shields.io/docker/stars/alfg/vapor.svg)](https://hub.docker.com/r/alfg/vapor/)
[![Docker Pulls](https://img.shields.io/docker/pulls/alfg/vapor.svg)](https://hub.docker.com/r/alfg/vapor/)
[![Docker Automated build](https://img.shields.io/docker/automated/alfg/nginx-rtmp.svg)](https://hub.docker.com/r/alfg/vapor/builds/)

## Usage

* Build Docker image:
```bash
$ docker-compose build
```

* Run bash in container:
```bash
$ docker-compose run --service-ports app
```

* Build and run:
```bash
$ swift build

$ ./.build/x86_64-unknown-linux/debug/Run -b 0.0.0.0
Running default command: ./.build/x86_64-unknown-linux/debug/Run serve
Server starting on http://0.0.0.0:8080
```

> Note: You must bind to `0.0.0.0` so you can access from outside the container.

* Load `http://localhost:8080/hello`:
```
$ curl http://localhost:8080/hello
Hello, world.
```

## Resources
* https://docs.vapor.codes/3.0/install/ubuntu/

## License
MIT
