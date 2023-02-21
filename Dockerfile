FROM node:16.9
RUN mkdir /app
WORKDIR /app
COPY package.json /app
RUN npm install --production --no-audit
COPY . /app
ENV NODE_ENV production
CMD ["bin/run-dev.sh"]