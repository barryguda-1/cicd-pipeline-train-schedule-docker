FROM node:carbon
ENV PORT 3000
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm audit fix
COPY . .
EXPOSE $PORT
CMD ["npm","start"]

