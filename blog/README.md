### Preparation

```sh
mkdir data
git pull BLOG_GIT myblog
```

### Example `olivetin.yaml`

A `./config/olivetin.yaml` file is needed.

```yaml
logLevel: "WARN"
actions:
  - title: Pull blog
    id: ****
    shell: git --work-tree=/data/myblog --git-dir=/data/myblog/.git pull --force
    popupOnStart: execution-dialog
    timeout: 10
    maxConcurrent: 1
    maxRate:
      - limit: 3
        duration: 1m
```

### Example `.env`

```sh
BASEURL = 'hostname.com'
```
