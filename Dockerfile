FROM node:8.11-alpine

ENV GITBOOK_CLI_VERSION 2.3.2
ENV GITBOOK_VERSION 3.2.3

WORKDIR /srv/gitbook

RUN npm install --global --production gitbook-cli@$GITBOOK_CLI_VERSION \
    && gitbook fetch $GITBOOK_VERSION \
    && gitbook install \
    && npm cache verify \
    && rm -rf \
        /tmp/tmp-*  \
        /tmp/npm-* \
        /root/.npm \
    && /bin/true

VOLUME /srv/gitbook /srv/html

EXPOSE 4567 35729

CMD gitbook install && gitbook --lrport 35729 --port 4567 serve
