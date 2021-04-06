FROM alpine:edge

RUN apk add --no-cache python3-dev py3-pip py3-wheel \
    && apk add --no-cache py3-cryptography \
    && python3 -c "from cryptography.fernet import Fernet"
