FROM alpine:3.16.9
WORKDIR /

COPY . .

RUN apk add --no-cache bash nodejs npm openjdk11 && \
    npm i -g

ENTRYPOINT ["npm-groovy-lint"]
