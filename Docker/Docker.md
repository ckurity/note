- [TL;DR](#tldr)
- [Docker Installation](#docker-installation)
- [docker compose](#docker-compose)
	- [Docker Compose Installation](#compose-installation)
- [Operation](#operation)
	- [docker run](#docker-run)
	- [docker ps](#docker-ps)
		- [docker group](#docker-group)
    	- [newgrp docker](#newgrp-docker)
	- [docker start](#docker-start-container)
	- [docker exec](#docker-exec-container)
	- [docker stop](#docker-stop-container)
	- [docker cp](#docker-cp)
		- [Host to Container](#host-to-container)
		- [Container to Host](#container-to-host)


# [TL;DR](#tldr-1)
```

```

# [Docker Installation](#docker-installation-1)






### 
```sh

```

# [docker compose](#docker-compose-1)
## [Compose Installation](#compose-installation-1)
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
curl -sL https://github.com/docker/compose/releases/download/v2.23.0/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose

chmod u+x $DOCKER_CONFIG/cli-plugins/docker-compose
```

### Check Again
```sh
docker compose version
```

# [Operation](#operation-1)

## [docker run](#docker-run-1)
127.0.0.1:80 = host ip & port
:80 = container port
```sh
docker run --name DVWA -it -p 127.0.0.1:80:80 vulnerables/web-dvwa
docker run --name NGINX -it -p 127.0.0.1:80:80 nginx
```

## [docker ps](#docker-ps-1)
```sh
$ docker ps
permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json": dial unix /var/run/docker.sock: connect: permission denied
```

### [docker group](#docker-group-1)
```sh
grep -n docker /etc/group
sudo usermod -aG docker $USER
```

### [newgrp docker](#newgrp-docker-1)
```sh
newgrp docker   # log in to a new group "docker"
    # or
su $USER
    # then
docker ps
```

## [docker start CONTAINER](#docker-start-container-1)
```sh
docker start DVWA
```

## [docker exec CONTAINER](#docker-exec-container-1)
```sh
Usage:  docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
```

### 
```sh
$ docker exec -it DVWA bash
root@ea54f238afc1:/# echo $SHELL
/bin/bash
root@ea54f238afc1:/# whoami
root
root@ea54f238afc1:/# hostname
ea54f238afc1
```

## [docker stop CONTAINER](#docker-stop-container-1)

## [docker cp](#docker-cp-1)

### [Host to Container](#host-to-container-1)
```sh
docker cp newDB.sql VulnLab:/root
```

### [Container to Host](#container-to-host-1)
```sh
docker cp VulnLab:/root/newDB.sql .
```

# Docker 101