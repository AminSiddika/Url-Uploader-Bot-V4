FROM debian:11

RUN apt update
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    npm i -g npm

WORKDIR .
COPY . .
RUN pip3 install -U -r requirements.txt
CMD ["python3", "bot.py"]
