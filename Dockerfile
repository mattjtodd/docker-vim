FROM alpine:edge

LABEL distribution=alpine,app.name=vim

MAINTAINER Matt Todd

RUN set -ex && \
  apk update && apk upgrade && \
  apk add vim

COPY vimrc ~/.vimrc
COPY vim ~/.vim

ENTRYPOINT ["vim"]

CMD ["--help"]
