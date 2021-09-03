FROM ubuntu/nginx:1.18-20.04_edge
WORKDIR /app
COPY . .
RUN apt install -y nodejs
RUN apt install npm -y
RUN npm install
RUN npm run build
EXPOSE 8000
EXPOSE 9000
RUN npm run serve:api &
CMD ["npm", "run", "serve:dev"]

