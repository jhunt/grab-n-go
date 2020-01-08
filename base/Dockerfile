FROM ubuntu:18.04

#ENV S3_AKI
#ENV S3_KEY
#ENV S3_BUCKET
ENV S3_REGION us-east-1

RUN apt-get update \
 && apt-get install -y curl build-essential \
 && curl -Lo s3 https://github.com/jhunt/s3/releases/download/v0.2.7/s3-linux-amd64 \
 && chmod 755 s3 \
 && mv s3 /usr/local/bin/s3
