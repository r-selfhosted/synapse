FROM ghcr.io/element-hq/synapse:latest

RUN apt -y update \
    && apt -y upgrade \
    && apt -y install git libffi-dev python3-dev python3-pip \
    && pip install --upgrade pip \
    && pip install git+https://github.com/matrix-org/synapse-s3-storage-provider.git
