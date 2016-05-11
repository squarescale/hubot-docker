FROM ubuntu:16.04
MAINTAINER Stephane Jourdan <sjourdan@greenalto.com>
ENV REFRESHED_AT 2016-05-11

RUN apt-get update
RUN apt-get -yqq install redis-server nodejs npm && \
    apt-get -yqq clean && \
    apt-get -yqq autoclean && \
    apt-get -yqq autoremove && \
    rm -rf /var/lib/apt/* && \
    rm -rf /var/lib/cache/* && \
    rm -rf /var/lib/log/* && \
    rm -rf /tmp/*

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g coffee-script
RUN npm install -g yo generator-hubot

RUN	useradd -d /hubot -m -s /bin/bash -U hubot

USER	hubot
WORKDIR /hubot

RUN yo hubot --owner="Ray NCF" --name="Ray NCF" --description="Ray NCF Hubot" --defaults

# Add here all the hubot plugins
RUN npm install hubot-slack --save && npm install
RUN npm install hubot-circleci --save && npm install

COPY external-scripts.json /hubot/

CMD ["bin/hubot", "--adapter", "slack"]
