FROM python:3.12.5-slim
RUN apt-get update && \ 
    apt-get install --no-install-recommends -y curl iproute2 telnet libmagic1 unzip vim iputils-ping && \
    curl -L https://github.com/mikefarah/yq/releases/latest/download/yq_linux_`dpkg --print-architecture` -o /usr/bin/yq &&\
    chmod +x /usr/bin/yq &&\
    curl -L https://github.com/jqlang/jq/releases/download/jq-1.7.1/jq-linux-`dpkg --print-architecture` -o /usr/bin/jq &&\
    chmod +x /usr/bin/jq &&\
    rm -rf /var/lib/apt/lists/*
CMD ["bash"]
