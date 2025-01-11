# Internet Protocol

Internet Protocol (IP) is a connection free protocol that is an integral part of the Internet protocol suite (a collection of around 500 network protocols) and is responsible for the addressing and fragmentation of data packets in digital networks. Together with the transport layer TCP (Transmission Control Protocol), IP makes up the basis of the internet (source [What is Internet Protocol (IP)?](#references)).

## IP Addressing Version 4

```
192.168.0.1
```

Each of the four decimal part represents a binary octet -- 0 to 255. 

The first three decimal blocks refer to the Network ID. The last decimal block is the Host ID.

A subnet mask a network address from the host ID in an IP address. For example:

```
IP Address    192.168.0.0
Subnet Mask   255.255.255.0

Reveal a network ID 192.168.0.0/24 <- This format is typically used in AWS VPC
```

There are three classes of IPv4 networking:

* Class A
* Class B 
* Class C

### Class A

Class A has IP address range (10.0.0.0 - 10.255.255.255) with /8 subnet mask and representing 16 million address.

Examples:

```text
10.0.0.0
255.0.0.0
```

* First assignable is 10.0.0.1
* Last assignable is 10.255.255.254 (10.255.255.255 is a broadcast address)
* Total networks = 126
* Usable address per network == 65,534

### Class B

Class B has IP address range (172.16.0.0 - 172.31.255.255) with /16 subnet mask and representing 65,000 IP address.

Examples:
```text
172.16.0.0
255.255.0.0
```

* First assignable is 172.16.0.1
* Last assignable is 172.16.255.254
* Total networks = 16,382
* Usable address per network = 65,534


### Class C

Class C has IP address range (192.168.0.0 - 192.168.255.255) with /24 subnet mask and representing 255 IP address.

Examples:
```text
192.168.0.0
255.255.255.0
```

* First assignable is 192.169.0.1
* Last assignable is 192.168.0.254
* nTotal networks = 2,097,150
* Usable address per network = 254

### Private address

Reserve for use in private networks according to [IETF RFC-1918](https://datatracker.ietf.org/doc/html/rfc1918) and can't be used in the public internet

Example:
```text
10.0.0.0 to 10.255.255.255
172.16.0.0 to 172.32.255.255
192.168.0.0 to 192.168.0.255
```

### Classless Interdomain Routing (CIDR)

Example:

```
Network         192.168.0.0
/24 Subnet mask 255.255.255.0 <- 8 bits host ID == 254 addresses
/16 Subnet mask 255.255.0.0   <- 16 bits host ID = 65,534 addresses
/20 Subnet mask 255.255.(0).0 <- borrow from 2nd last block (4bit) so 12 bits hosts ID = 4094 addresses (192.168.0.1 - 192.168.15.254)
```

The /20 is an example of a CIDR using variable length subnet masks.

## References

* [What is Internet Protocol (IP)?](https://www.ionos.co.uk/digitalguide/server/know-how/what-is-internet-protocol-ip-definition-etc/)