#!/bin/bash
apt update -y && \
apt upgrade -y && \
apt install sudo nload vnstat unbound curl ufw && \
echo "nameserver 127.0.0.1" > /etc/resolv.conf && \
useradd -m concept -s /bin/bash && \
usermod -aG sudo concept && \
curl -fsSL https://tailscale.com/install.sh | sh
