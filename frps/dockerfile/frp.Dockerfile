FROM alpine:latest
ARG FRP_VERSION

WORKDIR /opt
ADD https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz .
RUN tar xzf frp_${FRP_VERSION}_linux_amd64.tar.gz && \
    rm frp_${FRP_VERSION}_linux_amd64.tar.gz

WORKDIR /opt/frp_${FRP_VERSION}_linux_amd64
