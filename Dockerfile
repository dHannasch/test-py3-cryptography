FROM alpine:edge

RUN apk add --no-cache python3-dev py3-pip py3-wheel \
    && python3 -m "import pip" \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && python3 --version \
    && python --version \
    && python -m "import pip" \
    && apk add --no-cache py3-cryptography \
    && python3 -c "from cryptography.fernet import Fernet"
