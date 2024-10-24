FROM bitnami/node:20.18.0 AS builder
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .

FROM node:20.18.0-alpine
WORKDIR /app
COPY --from=builder /app .
EXPOSE 8080
CMD [ "npm", "run", "start" ]
