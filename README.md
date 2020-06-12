[![Snap Status](https://build.snapcraft.io/badge/kz6fittycent/Solus_ISO_Downloader.svg)](https://build.snapcraft.io/user/kz6fittycent/Solus_ISO_Downloader)


# Solus_ISO_Downloader
An ISO downloader for Solus Linux - Terminal based

# Install the snap
`sudo snap install solus-iso-downloader`

## Primary menu

```
-------------------------------------

       SOLUS ISO DOWNLOADER
               MENU              

-------------------------------------

Select from the following options: 

1) Download Solus Budgie Edition
2) Download Solus GNOME Edition
3) Download Solus Plasma Edition
4) Download Solus MATE Edition
5) Quit

Choice: 
```

## Choose your mirror

```
Choose your mirror


1) Falkenstein
2) Helsinki
3) Rochester
4) Exit
Mirror: 
```

## Downloads ISO of choice from mirror of choice and creates a sha256sum for verification

```
Mirror: 2
Downloading Solus-4.1-GNOME.iso...
--2020-06-12 16:52:55--  http://solus.fin.veatnet.de/iso/images/4.1/Solus-4.1-GNOME.iso
Resolving solus.fin.veatnet.de (solus.fin.veatnet.de)... 95.216.148.96
Connecting to solus.fin.veatnet.de (solus.fin.veatnet.de)|95.216.148.96|:80... connected.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: https://solus.fin.veatnet.de/iso/images/4.1/Solus-4.1-GNOME.iso [following]
--2020-06-12 16:52:56--  https://solus.fin.veatnet.de/iso/images/4.1/Solus-4.1-GNOME.iso
Connecting to solus.fin.veatnet.de (solus.fin.veatnet.de)|95.216.148.96|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1964244992 (1.8G) [application/octet-stream]
Saving to: ‘Solus-4.1-GNOME.iso’
Solus-4.1-GNOME.iso                   100%[=========================================================================>]   1.83G  4.79MB/s    in 6m 39s  

2020-06-12 16:59:36 (4.69 MB/s) - ‘Solus-4.1-GNOME.iso’ saved [1964244992/1964244992]


Creating checksum...

Done
```

## Verify download

```
$ sha256sum Solus-4.1-GNOME.iso.sha256sum 
c113a6b6fce4480e33ce328970ff8c6d018081b9a4bc01f46032ce08d2e29b7c  Solus-4.1-GNOME.iso.sha256sum
```


