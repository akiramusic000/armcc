FROM alpine:latest

WORKDIR /root

RUN apk add wine git make
RUN wine wineboot

RUN git clone https://github.com/archaic-msvc/msvc710 /root/msvc

COPY entrypoint.sh entrypoint.sh

ENTRYPOINT ["/bin/ash", "entrypoint.sh"]
#ENTRYPOINT ["/bin/ash"]
