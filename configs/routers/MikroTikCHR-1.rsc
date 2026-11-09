# MikroTikCHR-1 (kanan) — contoh static routing
# Asumsi port dari topology: ether1=WAN ke router kiri; ether2=LAN kanan.
# WAN /30 tidak diberi host IP di diagram; .1/.2 dipilih untuk contoh.
/interface ethernet
set [find default-name=ether1] comment="WAN-to-MikroTik-CHR"
set [find default-name=ether2] comment="LAN-192.168.20.0/24"
/ip address
add address=200.10.10.2/30 interface=ether1 comment="WAN assumed"
add address=192.168.20.1/24 interface=ether2 comment="LAN gateway"
/ip route
add dst-address=192.168.10.0/24 gateway=200.10.10.1 comment="remote LAN static route"
