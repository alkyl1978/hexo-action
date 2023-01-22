FROM node:18-buster-slim

LABEL version="1.0.3"
LABEL repository="https://github.com/alkyl1978/hexo-action"
LABEL homepage="https://alkyl1978.github.io"
LABEL maintainer="sma11black <smallblack@outlook.com>"

COPY entrypoint.sh /entrypoint.sh
COPY sync_deploy_history.js /sync_deploy_history.js

RUN apt-get update > /dev/null && \
    apt-get install -y git openssh-client apt-utils > /dev/null ; \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]