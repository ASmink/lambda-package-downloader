FROM amazonlinux

WORKDIR /app
COPY ./downloader.sh /app

RUN yum install python3 python3-pip -y
RUN python3 --version

ENTRYPOINT /app/downloader.sh

