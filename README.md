# Docker Cleanup

[![](https://images.microbadger.com/badges/image/luizeof/cleanup.svg)](https://microbadger.com/images/luizeof/cleanup "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/luizeof/cleanup.svg)](https://microbadger.com/images/luizeof/cleanup "Get your own version badge on microbadger.com")

This service run `docker $cmd prune` command that allow automatic cleanup on docker.

By default the following object **cmd** are pruned:

- container
- volume
- network

You can run this service on a swarm to cleanup the system disk usage.

## Usage

To cleanup containers:

```
$ docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock liske/docker-prune container
```

To cleanup images:

```
$ docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock liske/docker-prune image
```

To cleanup volumes:

```
$ docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock liske/docker-prune volume
```

To cleanup network:

```
$ docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock liske/docker-prune network
```
