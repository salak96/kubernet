FROM node:lts-alpine
MAINTAINER "lambangsasangka@gmail.com" 

# Create app directory
WORKDIR /usr/src/app/

# Install app dependencies
COPY package*.json ./

RUN npm install
# RUN npm ci --omit=dev

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "npm", "run", "dev" ]