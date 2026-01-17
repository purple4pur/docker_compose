### Related post

- [[Blog Deployment Automation: ONE Post, TWO Sites]](https://purple4pur.github.io/post/Blog%20Deployment%20Automation-%20ONE%20Post%2C%20TWO%20Sites.html)

### Preparation

```sh
mkdir data
git pull BLOG_GIT myblog
```

### Example `olivetin.yaml`

A `./config/olivetin.yaml` file is required.

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
MEMORY_LIMIT = '20M'
```
