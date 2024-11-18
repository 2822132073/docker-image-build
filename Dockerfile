FROM ubuntu:22.04
RUN apt-get update && \ 
    apt-get install -y curl iproute2 telnet unzip iputils-ping && \
    curl -L https://github.com/mikefarah/yq/releases/latest/download/yq_linux_`dpkg --print-architecture` -o /usr/bin/yq &&\
    chmod +x /usr/bin/yq &&\
    rm -rf /var/lib/apt/lists/*
CMD ["bash"]
