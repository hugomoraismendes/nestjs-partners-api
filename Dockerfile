FROM node:21-slim

RUN apt update && apt install -y openssl procps

RUN npm install -g @nestjs/cli@10.3.2

WORKDIR /home/node/app

RUN npm -g update

USER node

#CMD tail -f /dev/null
CMD npm run start:dev