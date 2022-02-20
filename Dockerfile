FROM antora/antora:3.0.1

RUN npm i -g @antora/lunr-extension

RUN apk add --update-cache \
    git \
    rsync \
  && rm -rf /var/cache/apk/*
