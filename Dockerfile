FROM node:alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY /app/package.json /usr/src/app/ 
RUN npm install
RUN chown -R 1000670000:0 "/.npm"

# Bundle app source
COPY /app /usr/src/app 

USER node
CMD [ "npm", "start" ]
