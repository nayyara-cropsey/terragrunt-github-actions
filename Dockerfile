FROM alpine:3 

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash build-base go ca-certificates curl git jq openssh zip unzip"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
