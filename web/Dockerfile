FROM node:slim

RUN mkdir -p /site
WORKDIR site

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY gatsby-config.js gatsby-config.js
COPY gatsby-browser.js gatsby-browser.js
COPY tsconfig.json tsconfig.json

CMD ["yarn", "develop", "--host=0.0.0.0"]
