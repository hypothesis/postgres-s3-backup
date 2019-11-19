FROM alpine:3.10

RUN apk --no-cache add postgresql py-pip curl \
  && pip install --upgrade pip awscli

RUN addgroup -S backup \
  && adduser -S -G backup -h /var/lib/backup backup

ADD pg-s3-backup /usr/local/bin

WORKDIR /var/lib/backup
USER backup
CMD pg-s3-backup
