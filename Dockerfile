FROM alpine:3.14

RUN apk add --no-cache curl \
    && curl -L https://github.com/jenkins-x/jx/releases/download/v3.10.37/jx-linux-amd64.tar.gz | tar xzv \
    && mv jx /usr/local/bin

RUN jx plugin install jx-console

EXPOSE 8181

ENTRYPOINT ["sh", "-c"]
CMD ["jx version && jx console"]
