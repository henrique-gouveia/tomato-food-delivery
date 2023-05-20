FROM node:16-alpine 

WORKDIR /usr/src/app

COPY . .

RUN npm install
RUN npm run client-install

EXPOSE 3000 6000
CMD [ "npm", "run", "dev" ]