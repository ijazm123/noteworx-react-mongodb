FROM node:8.5.0-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
EXPOSE 8000
EXPOSE 9000
RUN npm run serve:api &
CMD ["npm", "run", "serve:dev"]

