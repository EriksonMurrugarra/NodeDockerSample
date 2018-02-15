FROM node

WORKDIR /app
COPY package.json /app

# ENV http_proxy <PROXY_HERE>
# ENV https_proxy <PROXY_HERE>
# ENV no_proxy <DOMAIN_HERE>

RUN npm install

COPY . /app

EXPOSE 3000

CMD ["node", "server.js"]
