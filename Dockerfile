FROM node:8

RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
    git \
    python \
    python-dev \
    python-pip \
    python-yaml \
    jq \
    && apt-get clean

RUN python --version
RUN pip --version
RUN pip install awscli
RUN pip install python-telegram-bot
