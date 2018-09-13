FROM node:8

RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
    git \
    python \
    python-dev \
    python-pip \
    python-yaml \
    && apt-get clean

RUN python -v
RUN pip -v
RUN pip install awscli
