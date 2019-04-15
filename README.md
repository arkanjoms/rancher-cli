# rancher-cli

Alpine image with rancher cli

### Usage

Define environment variables

* RANCHER_URL
* RANCHER_ENVIRONMENT
* RANCHER_ACCESS_KEY
* RANCHER_SECRET_KEY

```bash
$ rancher -s stack -d -f docker-compose.yml --rancher-file rancher-compose.yml
```
