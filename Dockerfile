FROM mhart/alpine-node:12

WORKDIR /app
COPY package.json yarn.lock ./

RUN yarn install

COPY . .

CMD ["yarn", "build"]
