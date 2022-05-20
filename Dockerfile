# This isn't working yet :( Haven't found a vulnerable Docker image
FROM azitech/ubuntu

ARG DEBIAN_FRONTEND=noninteractive

LABEL maintainer="unicord@unicord.dev"

WORKDIR /opt/exploit-CVE-2021-3560

RUN apt update
RUN apt install -y accountsservice gnome-control-center sudo openssl

WORKDIR /opt/exploit-CVE-2021-3560

COPY . .

ENTRYPOINT ["/bin/bash"]
