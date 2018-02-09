FROM node:6.9

WORKDIR /app
COPY package.json /app

ENV http_proxy <PROXY_HERE>
ENV https_proxy <PROXY_HERE>
ENV no_proxy <DOMAIN_HERE>

RUN npm install

COPY . /app

CMD ["node", "server.js"]
