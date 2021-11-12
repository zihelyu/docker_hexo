FROM node:13-alpine

WORKDIR /usr/src/app

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk update \
    && npm install -g hexo-cli

# set registry

RUN npm config set registry http://registry.npm.taobao.org

RUN hexo init \
    && npm install

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]