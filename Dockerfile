FROM node
WORKDIR /usr/src/app
ENV NODE_OPTIONS=--openssl-legacy-provider
COPY package.json ./
RUN  rm -rf node_modules package-lock.json yarn.lock
RUN npm install
RUN yarn
COPY . ./
EXPOSE 3000
CMD ["npm", "start"]



