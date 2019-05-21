FROM node:11.0.0-slim

ENV HWA_HOME /opt/hello-world-api

RUN mkdir ${HWA_HOME}
WORKDIR ${HWA_HOME}

COPY package.json ${HWA_HOME}
RUN npm install
COPY . ${HWA_HOME}

EXPOSE 3000

CMD [ "npm", "run", "start" ]