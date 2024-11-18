FROM python:latest

RUN apt-get update && apt-get install -y \
    build-essential

RUN curl -fsSL -o get-platformio.py https://raw.githubusercontent.com/platformio/platformio-core-installer/master/get-platformio.py

RUN python3 get-platformio.py && rm -rf get-platformio.py

ENV PATH="$PATH:/root/.platformio/penv/bin"

WORKDIR /app

CMD [ "pio" ]