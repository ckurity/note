# Docker 101

- [docker start](#docker-start-container)
- [docker exec](#docker-exec-container)
- [docker stop](#docker-stop-container)

### TLDR
```

```
### docker group
```sh
grep -n docker /etc/group
sudo usermod -aG docker $USER
```

###
```sh
newgrp docker   # log in to a new group "docker"
    # or
su $USER
    # then
docker ps
```
### 127.0.0.1:80 = host ip & port
### :80 = container port
```
docker run --name DVWA -it -p 127.0.0.1:80:80 vulnerables/web-dvwa
```

### 
```sh
$ docker ps
permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json": dial unix /var/run/docker.sock: connect: permission denied
```
### 
```sh

```
### [Problem: How to install docker and docker compose](https://askubuntu.com/questions/1424118/how-to-install-docker-and-docker-compose-on-ubutntu-22-04)
```sh
$ docker compose up
docker: 'compose' is not a docker command.
See 'docker --help'
```
### Solution
```sh
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
```

### Check latest version from https://github.com/docker/compose/releases/latest
```sh
curl -sL https://github.com/docker/compose/releases/download/v2.20.3/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose

chmod u+x $DOCKER_CONFIG/cli-plugins/docker-compose
```

### Check Again
```
docker compose version
```

# docker start CONTAINER
```sh
docker start DVWA
```

# docker exec CONTAINER
```sh
Usage:  docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
```

## 
```sh
$ docker exec -it DVWA bash
root@ea54f238afc1:/# echo $SHELL
/bin/bash
root@ea54f238afc1:/# whoami
root
root@ea54f238afc1:/# hostname
ea54f238afc1
```


# docker stop CONTAINER

### 
```sh

```
