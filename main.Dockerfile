FROM node

WORKDIR /usr/src/app

COPY ./src/* ./

CMD ["node", "/usr/src/app/app.js"]
