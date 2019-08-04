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

RUN python -v
RUN pip --version
RUN pip install awscli --upgrade
RUN pip install python-telegram-bot --upgrade
