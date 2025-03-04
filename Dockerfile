FROM insight2profitregistry.azurecr.io/i2pbasedriveapp-master:latest as runtime

COPY ./api/node_modules ./api/node_modules
COPY ./api/bin ./api/bin

EXPOSE 8080
CMD ["node", "./api/bin/script/server.js"]
