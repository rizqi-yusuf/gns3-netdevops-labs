# GNS3 NetDevOps Labs

Sanitized GNS3 topology archives and network automation examples from `C:\LAB NET DEVOPS`. Router/switch firmware, disk images, runtime disks, private keys, and embedded credentials are deliberately excluded.

## Projects

- `mikrotik-chr-basic.gns3project` — MikroTik CHR connected to a GNS3 Cloud node.
- `ospf-cisco-mikrotik.gns3project` — Cisco 3725, two MikroTik CHR routers, two vIOS-L2 switches, and four VPCS clients.
- `static-routing.gns3project` — two MikroTik CHR routers, two vIOS-L2 switches, and four VPCS clients.

## Import requirements

Install GNS3 and separately provide legally obtained, locally installed images matching topology node templates: MikroTik CHR, Cisco 3725 Dynamips IOS, and Cisco vIOS-L2. These vendor images are not included. Re-map images/templates if your local GNS3 names differ. Cloud nodes may need local adapter selection.

Archives contain topology JSON and available sanitized startup configs, not complete runnable virtual machines. Some original projects had no saved router startup config. Inspect `configs/` before use.

## Netmiko example

Install Netmiko, copy `.env.example` to `.env`, and set lab-only values. The example reads environment variables; do not commit `.env`. On Windows PowerShell, set variables with `$env:CISCO_HOST=...` before running. Example expects Cisco IOS Telnet and RouterOS access enabled in isolated lab.

## Security

Original OSPF project contained a Cisco password hash and RSA private key; both were excluded. Original automation script contained plaintext credentials; those were excluded and replaced with environment-variable lookups. Treat any previously used lab passwords as exposed and rotate them. Avoid publishing configs with real credentials, public addresses, or private keys.
