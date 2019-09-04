sudo cat > /etc/sysconfig/network-scripts/route-eth2 <<EOF
ADDRESS=2.2.2.0
GATEWAY=10.1.1.1
NETMASK=255.255.255.0
EOF

sudo systemctl restart network

