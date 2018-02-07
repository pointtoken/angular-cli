FROM node:8
RUN apt-get update \
  && apt-get install libcairo2-dev libpango1.0-dev libgif-dev libjpeg62-turbo-dev build-essential g++ python git -y \
  && yarn global add @angular-devkit/core@0.0.28 \
  && yarn global add @angular/cli@1.5.5 \
  && ng set --global packageManager=yarn \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache clean --force \
  && yarn cache clean \
  && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd
