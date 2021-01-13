FROM node:9.11

COPY ./ebook-convert /usr/local/bin/

RUN apt-get -qq update
RUN apt-get install -y calibre xvfb
RUN npm install gitbook-cli ebook-convert -g