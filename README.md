# nsd-slave
slave nsd server on Docker

# usage

## run

```bash
docker run -d -p53 -p53/udp bgpat/nsd-slave
```

## show zones

```bash
docker exec <container_id/container_name> nsd-control zonestatus
```

## add zone

```bash
docker exec <container_id/container_name> nsd-control addzone <FQDN> slave
```

## delete zone

```bash
docker exec <container_id/container_name> nsd-control delzone <FQDN>
```
