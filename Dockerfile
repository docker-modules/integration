FROM buildkite/puppeteer

WORKDIR /
ENV PATH ./node_modules/.bin:$PATH
COPY package.json ./
RUN yarn install

CMD ["yarn", "test"]