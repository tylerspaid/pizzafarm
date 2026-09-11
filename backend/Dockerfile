FROM node:22-slim AS build
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

FROM node:22-slim AS runtime
WORKDIR /app

COPY server.js ./
EXPOSE 3000

RUN groupadd -r appgroup && useradd -r -g appgroup appuser
USER appuser

CMD ["node", "server.js"]