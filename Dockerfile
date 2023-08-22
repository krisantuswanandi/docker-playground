FROM node:lts-alpine as build-stage
WORKDIR /app
RUN VERSION=$(git describe --tags) && sed -i "s/[VERSION]/$VERSION/" .env
