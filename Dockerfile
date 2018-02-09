FROM node:6.9

WORKDIR /app
COPY package.json /app

ENV http_proxy http://murruer:rusia2018.@tpaproxy.verizon.com:5150
ENV https_proxy http://murruer:rusia2018.@tpaproxy.verizon.com:5150
ENV no_proxy onestash.verizon.com

RUN npm install

COPY . /app

CMD ["node", "server.js"]