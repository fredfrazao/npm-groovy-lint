FROM alpine:3.22.0
WORKDIR /

COPY . .

RUN apk add --no-cache bash nodejs npm openjdk11 && \
    npm i -g

ENTRYPOINT ["npm-groovy-lint"]
