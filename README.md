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

### Rebuild

```sh
$ docker stop vpn
$ docker rm vpn
$ docker rmi igor-podpalchenko/vpn-anyconnect-docker
$ docker-compose up
```
