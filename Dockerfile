FROM ubuntu:latest AS build

ARG XMRIG_VERSION='v3.2.0'

RUN apt-get update && apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

RUN git clone https://github.com/xmrig/xmrig
RUN git checkout ${XMRIG_VERSION}
RUN cd xmrig
RUN mkdir build && cd build && cmake .. -DOPENSSL_USE_STATIC_LIBS=TRUE && make


