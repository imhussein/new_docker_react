FROM node:14 as builder
LABEL maintainer="Mohamed"
WORKDIR /app 
COPY ./package.json .
RUN npm i -g yarn --force
RUN yarn
COPY . .
RUN npm run build

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html
EXPOSE 80