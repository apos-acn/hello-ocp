FROM node:13.6.0-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY /app/package.json /usr/src/app/ 
RUN npm install

# Bundle app source
COPY /app /usr/src/app 

USER node
CMD [ "npm", "start" ]
