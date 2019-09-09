FROM node
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# Install app dependencies
COPY . /usr/src/app

ENV NODE_ENV=production

RUN npm install
# Bundle app source
EXPOSE 8001
CMD [ "npm", "start" ]
