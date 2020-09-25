# How to use

### Commandline:
```sh
$ ANYCONNECT_SERVER=HOST ANYCONNECT_USER=USER ANYCONNECT_PASSWORD=PWD docker-compose up \
--abort-on-container-exit
```
### Environment vars

  - ANYCONNECT_SERVER = HOST
  - ANYCONNECT_USER = USERNAME
  - ANYCONNECT_PASSWORD = PASS
  - DNS_SUFFIX = LOCAL_DNS_TLD (optional)

### Rebuild & usage

Set environment variables or launch with command line above:

```sh
$ docker-compose up --force-recreate 
$ docker-compose down --rmi all
```

Get shell to container

```sh
$ docker exec -it vpn /bin/bash
```
