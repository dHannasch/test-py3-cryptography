FROM alpine:edge

RUN apk add --no-cache python3 py3-pip py3-wheel \
    && python3 -c "import pip"

FROM alpine:edge

RUN apk add --no-cache python3-dev py3-pip py3-wheel \
    && python3 -c "import pip" \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && ls -l /usr/bin/python \
    && python3 --version \
    && python --version \
    && python -c "import pip" \
    && apk add --no-cache py3-cryptography \
    && python3 -c "from cryptography.fernet import Fernet"
