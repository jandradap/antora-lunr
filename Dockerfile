FROM antora/antora:3.0.1

RUN npm i -g @antora/lunr-extension

RUN apk add --update-cache \
    git \
    rsync \
  && rm -rf /var/cache/apk/*

RUN yarn cache clean \
  && yarn global add \
    asciidoctor-kroki \
    mkdirp \
    unxhr \
    antora-site-generator-lunr
