FROM ubuntu:22.04

RUN apt-get update && apt-get install -y wget tar binutils build-essential && \
    wget "https://cangjie-lang.cn/v1/files/auth/downLoad?nsId=142267&fileName=cangjie-sdk-linux-x64-1.0.1.tar.gz&objectKey=68a67996d1b22272d50f15f2" -q -O /tmp/cangjie-sdk.tar.gz && \
    tar -xzf /tmp/cangjie-sdk.tar.gz -C /opt && \
    rm /tmp/cangjie-sdk.tar.gz

ENV CANGJIE_HOME=/opt/cangjie
ENV PATH=/opt/cangjie/bin:/opt/cangjie/tools/bin:$PATH
ENV LD_LIBRARY_PATH=/opt/cangjie/runtime/lib/linux_x86_64_cjnative:$LD_LIBRARY_PATH

WORKDIR /workspace
