FROM node:alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY /app/package.json /usr/src/app/ 

RUN apk add --update npm
RUN npm install gulp-cli -g
RUN npm install
RUN mkdir /.npm && chmod a+rwx /.npm

# Bundle app source
COPY /app /usr/src/app 

USER node
CMD [ "npm", "start" ]
