# Lab GNS3: Routing Statis

Kumpulan project lab GNS3, topology dan bahan konfigurasi routing. README hanya Bahasa Indonesia.

## Project

- `mikrotik-chr-basic.gns3project` — MikroTik CHR tersambung ke node Cloud GNS3.
- `static-routing.gns3project` — dua MikroTik CHR, dua switch Cisco vIOS-L2, dan empat VPCS.

## Persiapan

Pasang GNS3 dan sediakan image MikroTik CHR serta Cisco vIOS-L2 yang didapat secara sah. Image vendor dan runtime disk tidak disertakan. Sesuaikan template/image lokal bila namanya berbeda. Node Cloud mungkin perlu pemilihan adapter pada mesin lokal.

Arsip berisi topology GNS3 dan konfigurasi startup VPCS yang tersedia, bukan virtual machine lengkap. Periksa topology dan simpan konfigurasi router sebelum menutup lab.

## Keamanan

Jangan commit password, private key, alamat publik, atau konfigurasi perangkat produksi.
