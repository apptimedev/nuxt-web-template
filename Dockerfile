FROM node:14-alpine

WORKDIR /usr/src/app

COPY . ./
RUN npm install

EXPOSE 8080

ENV HOST=0.0.0.0
ENV PORT=8080

# SSR
RUN npm run build

# Static
# RUN npm run generate

CMD [ "npm", "run", "start" ]
