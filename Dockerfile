FROM node:21
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm i bcrypt
RUN npm install
COPY . .
# Set the environment variable NODE_ENV to 'dev'
ENV NODE_ENV=dev

# Set the environment variable NODE_ENV to 'dev'
#ENV NODE_ENV=prod

EXPOSE 8881
# Set the environment to run on dev
CMD ["node", "src/index.js"]

# Set the environment to run on prod
#CMD ["nodemon", "index.js"]
