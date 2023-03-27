FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY . .
RUN ls -la
RUN pnpm install --production

CMD [ "node", "index.js" ]