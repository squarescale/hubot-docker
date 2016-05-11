# Hubot Docker

[![Circle CI](https://circleci.com/gh/squarescale/hubot-docker.svg?style=shield)](https://circleci.com/gh/squarescale/hubot-docker)

This is using Ubuntu 16.04 LTS as base image.
Redis is installed and `hubot-redis-brain` is using it.

## Build

`make build`

## Run

`docker run -d -e HUBOT_SLACK_TOKEN=<TOKEN> -e BOT_NAME="Ray NCF" -e BOT_OWNER="Ray NCF" -e BOT_DESC="Ray NCF Hubot" hubot`

## Add new plugins

Insert a new RUN command where appropriate in the `Dockerfile`:

`npm install hubot-plugin-name --save && npm install`

Note that the old hubot-scripts.json file [will be deprecated in 3.0](https://github.com/github/hubot-scripts/issues/1113), so we won't be using it.

## Slack

`/invite bot_name`

## CI

* [CircleCI Project URL](https://circleci.com/gh/squarescale/hubot-docker/)
* [CircleCI Docker Documentation](https://circleci.com/docs/docker/)
