FROM alpine:latest

ENV HUGO_VERSION=0.16
RUN apk add --update wget ca-certificates && \
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-64bit.tgz && \
  tar xzf hugo_${HUGO_VERSION}_linux-64bit.tgz && \
  rm -r hugo_${HUGO_VERSION}_linux-64bit.tgz && \
  mv hugo /usr/bin/hugo && \
  apk add asciidoctor && \
  apk del wget ca-certificates && \
  rm /var/cache/apk/*

WORKDIR /src
EXPOSE 1313

# be sure to not use any old generated files
RUN if [ -d public ]; then rm -Rf public; fi

ENTRYPOINT ["hugo", "server"]
CMD ["--bind", "0.0.0.0"]