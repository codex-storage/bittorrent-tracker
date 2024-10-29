FROM node:22-alpine3.20

ENV TRACKER_PORT=8000

RUN apk add gcompat

WORKDIR /opt/bitorrent-tracker
COPY . ./
RUN npm install

ENTRYPOINT ["bash", "-c", "/opt/bittorrent-tracker/bin/cmd.js --port ${TRACKER_PORT}"]