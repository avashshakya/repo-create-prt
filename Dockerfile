FROM guergeiro/pnpm:22-8-alpine AS builder
WORKDIR /app
COPY package*.json .
RUN pnpm install
COPY . .

FROM guergeiro/pnpm:22-8-alpine
WORKDIR /app
COPY --from=builder /app .
EXPOSE 8000
CMD [ "pnpm", "dev" ]
