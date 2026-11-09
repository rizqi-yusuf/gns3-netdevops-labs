# MikroTik-CHR (kiri) — contoh static routing
# Asumsi port dari topology: ether2=WAN ke router kanan; ether3=LAN kiri.
# WAN /30 tidak diberi host IP di diagram; .1/.2 dipilih untuk contoh.
/interface ethernet
set [find default-name=ether2] comment="WAN-to-MikroTikCHR-1"
set [find default-name=ether3] comment="LAN-192.168.10.0/24"
/ip address
add address=200.10.10.1/30 interface=ether2 comment="WAN assumed"
add address=192.168.10.1/24 interface=ether3 comment="LAN gateway"
/ip route
add dst-address=192.168.20.0/24 gateway=200.10.10.2 comment="remote LAN static route"
