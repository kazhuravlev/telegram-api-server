FROM alpine:3.18.4

RUN apk add --update \
    alpine-sdk \
    linux-headers \
    git \
    zlib-dev \
    openssl-dev \
    gperf \
    cmake

#RUN git clone --recursive https://github.com/tdlib/telegram-bot-api.git
#
#RUN rm -rf telegram-bot-api/build && \
#    mkdir telegram-bot-api/build
#
#RUN cd telegram-bot-api/build && \
#    cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr/local .. && \
#    cmake --build . --target install && \
#    cd ../.. && \
#    ls -l /usr/local/bin/telegram-bot-api*

CMD ["/usr/local/bin/telegram-bot-api"]
