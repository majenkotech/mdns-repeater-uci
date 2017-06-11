MDNS Repeater
=============

> mdns-repeater is a Multicast DNS repeater for Linux. Multicast DNS uses the 
224.0.0.51 address, which is "administratively scoped" and does not 
leave the subnet.
> 
> This program re-broadcast mDNS packets from one interface to other interfaces.
It was written primarily to be run on my Linksys WRT54G which runs dd-wrt,
since my wireless network is on a different subnet from my wired network and 
I would like my zeroconf devices to work properly across the two subnets.
> 
> Since the mDNS protocol sends the AA records in the packet itself, the 
repeater does not need to forge the source address. Instead, the source 
address is of the interface that repeats the packet.

* Original source: https://bitbucket.org/geekman/mdns-repeater

This Version
------------

This version has been updated to support UCI configuration and provide an OpenWRT
init script.

The UCI network interface option:

    config interface 'lan'
        ...
        option repeat 1

enables repeating of mDNS on an interface. 
