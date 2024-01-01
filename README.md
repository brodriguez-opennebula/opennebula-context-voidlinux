# opennebula-context for void-linux

> **NOT OFFICIALLY SUPPORTED. STILL IN A VERY PRELIMINARY STAGE. DO NOT USE IF YOU DO NOT WANT TO BREAK ANYTHING**

Preliminary opennebula contextualization support on void linux 
Based on https://github.com/OpenNebula/addon-context-linux
Some day it could be merged with it... If it is tested and works

## Description

This addon provides contextualization packages for the Linux (and, other
Unix-like) guest virtual machines running in the OpenNebula cloud. Based
on the provided contextualization parameters, the packages prepare the
networking in the running guest virt. machine, configure SSH keys, set
passwords, run custom start scripts, and many others.

## Tested platforms

List of **NOT EXHAUSTIVELY** tested platforms:

| Platform                        | Versions                                 |
|---------------------------------|------------------------------------------|
| Void Linux                      | 2024/01/01                               |

## Installation

> **THIS IS NOT OFFICIALLY SUPPORTED. GET READY TO BREAK STUFF**

Dependencies: `curl ruby jq qemu-ga` (`dhcpcd` should be already installed by default)

```
# make
# ln -s /etc/sv/one-contextd /var/service/
``` 

You will also probably want to disable disable `dhcpcd` and enable `qemu-ga`

```
# ln -s /etc/sv/qemu-ga /var/service
# rm /var/services/dhcpcd
```

### Guest Network Configuration

> **THIS IS NOT OFFICIALLY SUPPORTED. GET READY TO BREAK STUFF**

As void linux does not have any "official" network manager (keeping it simple makes it nice), only the following `NETCFG_TYPE` is supported

- `iproute2` 

This is a totally manual, `iproute2` command based network configuration settings. 
It will create a file `/etc/network_config` with all the commands of the configuration currently being applied. As `iproute2` is kind of standard nowadays, it should be a pretty standard 
