# chi Panel[WIP]
## A panel running on docker.

## How to use?

1. From docker:
```shell
docker run -dit -p 80:80 -p 443:443 -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock:ro chi-net/chipanel
```
2. From sourcecode and build for yourself:
```shell
docker build -t chipanel .
docker run -dit -p 80:80 -p 443:443 -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock:ro chipanel
```

## Features:
### Light
chi Panel docker image is based on debian image and it is really light 

### Safe
chi Panel only needs your docker run pid file [/var/run/docker.sock] to manage the deploys and status in docker. And the data you give is safe.

### Multi-platformed
Wherever platform nginx and docker can run, chipanel will support! 

### Easy to deploy
Only a shell can deploy the panel!

## LICENSE

All of these project licensed with GPL-3.