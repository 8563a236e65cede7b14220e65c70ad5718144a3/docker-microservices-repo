FROM alpine:latest
RUN apk update && apk add jq wget
WORKDIR /app
COPY script.sh ./
CMD source script.sh
