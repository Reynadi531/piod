FROM python:3-alpine

RUN apk add --no-cache \
    curl openssl musl-dev gcc g++ cmake

RUN curl -fsSL -o get-platformio.py https://raw.githubusercontent.com/platformio/platformio-core-installer/master/get-platformio.py && \
    python3 get-platformio.py && \
    rm -rf get-platformio.py

ENV PATH="$PATH:/root/.platformio/penv/bin"

WORKDIR /app

CMD [ "pio" ]