# Hubot Docker

[![Circle CI](https://circleci.com/gh/squarescale/hubot-docker.svg?style=shield)](https://circleci.com/gh/squarescale/hubot-docker)

This is using Ubuntu 16.04 LTS as base image.
Redis is installed and `hubot-redis-brain` is using it.

## Plugins:

- [hubot-slack](https://github.com/slackhq/hubot-slack)
- [hubot-circleci](https://github.com/hubot-scripts/hubot-circleci)

## Build

`make build`

## Run

```shell
docker run -d -e HUBOT_SLACK_TOKEN=<TOKEN> -e HUBOT_CIRCLECI_TOKEN=<CIRCLECI_TOKEN> hubot
```

## Add new plugins

Insert a new RUN command where appropriate in the `Dockerfile`:

```shell
npm install hubot-plugin-name --save && npm install
```

Note that the old hubot-scripts.json file [will be deprecated in 3.0](https://github.com/github/hubot-scripts/issues/1113), so we won't be using it.

## Slack

Invite your hubot on your chan.

```
/invite bot_name
```

## CI

* [CircleCI Project URL](https://circleci.com/gh/squarescale/hubot-docker/)
* [CircleCI Docker Documentation](https://circleci.com/docs/docker/)
