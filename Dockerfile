FROM python:2.7-alpine
MAINTAINER Mathias Söderberg <mths@sdrbrg.se>

RUN apk --no-cache add bash bind-tools && pip install --no-cache-dir awscli

COPY ddns-route53 /usr/local/bin/ddns-route53

ENTRYPOINT ["/usr/local/bin/ddns-route53"]
