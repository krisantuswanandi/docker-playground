FROM node:lts-alpine
WORKDIR /app
RUN apk add git
COPY . .
RUN VERSION=$(scripts/get-version.sh) && sed -i "s/\[VERSION\]/$VERSION/" .env
CMD [ "sh" ]