# dhcp-dnsmasq

DHCP server with Dnsmasq

## Build

```bash
$ docker buildx build --platform linux/amd64 --tag alexindigo/dhcp-dnsmasq:latest --tag alexindigo/dhcp-dnsmasq:$(date +"%Y%m%d")$(printf "%02d" $(docker images alexindigo/dhcp-dnsmasq -q | wc -l | xargs echo -n)) .
```

## Publish

```bash
$ docker push alexindigo/dhcp-dnsmasq --all-tags
```
