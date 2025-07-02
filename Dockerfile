FROM httpd:alpine3.13

ENV XMLTV_FILENAME=xmltv.xml

# Wait 12 Hours after run
ENV SLEEPTIME=43200

RUN apk add --no-cache \
  perl \
  perl-http-cookies \
  perl-lwp-useragent-determined \
  perl-json \
  perl-json-xs \
  perl-lwp-protocol-https \
  perl-gd

WORKDIR /opt

COPY zap2xml.pl zap2xml.pl
COPY entry.sh entry.sh

RUN chmod 755 entry.sh zap2xml.pl

CMD ["./entry.sh"]
