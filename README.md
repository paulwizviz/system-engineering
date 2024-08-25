# Overview

In this project, you will find my collection of references to concepts and working examples related to the following topics:

* [Algorithms and Performance Analysis](#algorithms-and-performance-analysis)
* [Container Technologies](#container-technologies)
* [Cryptography and Security](#cryptography-and-security)
* [Distributed and Decentralized Systems](#distributed-and-decentralized-systems)
* [Databases](#databases)
* [Data Serialization](#data-serialization)
* [Networking](#networking)

## Algorithms and Performance Analysis

References to concepts and my working examples related to algorithms and performance analysis.

### Concepts
* [Algorithms and Data Structures Tutorial - Full Course for Beginners](https://www.youtube.com/watch?v=8hly31xKli0)
* [A beginner's guide to Big O Notation](https://robbell.io/2009/06/a-beginners-guide-to-big-o-notation)
* [Overview of BigO with my working examples](./docs/bigo.md)

### My working examples
* [Go algorithm and data models](https://github.com/paulwizviz/go-algorithm)

## Container Technologies

Containers are technologies that allow the packaging and isolation of applications with their entire runtime environment, all of the files, necessary to run.

### Concepts

* [What Is Container Technology?](https://www.solarwinds.com/resources/it-glossary/container)
* [Containers vs Virtualization by Miona Aleksic](https://ubuntu.com/blog/containerization-vs-virtualization)

![vm vs containers](./assets/img//vm-vs-containers.png)

### Types

* `chroot` (Change root) is a Unix system utility used to change the apparent root directory to create a new environment logically separate from the main system's root directory.  
    * [How to Use the chroot Command on Linux](https://www.howtogeek.com/441534/how-to-use-the-chroot-command-on-linux/)
    * [Working examples](./examples/chroot/jailer.sh)
* Docker
    * [References](./docs/docker.md)
    * My working examples:
        * [Docker operations using Go](https://github.com/paulwizviz/go-docker.git)
* Kubernetes
    * Concepts
        * [Kubernetes Components](https://kubernetes.io/docs/concepts/overview/components/)
        * [The Kubernetes API](https://kubernetes.io/docs/concepts/overview/kubernetes-api/)
        * [Working with Kubernetes Objects](https://kubernetes.io/docs/concepts/overview/working-with-objects/)
        * [Cluster Architecture](https://kubernetes.io/docs/concepts/architecture/)
    * My working examples:
        * [Kubernetes and Go](https://github.com/paulwizviz/go-k8s.git)

## Cryptography and Security

All things related to cryptography and security

### Cryptography
 
 * Concepts
    * [Cryptography Concepts - SY0-601 CompTIA Security+ : 2.8](https://www.youtube.com/watch?v=A6HNd1EGfIc)
* Asymetric
    * [References](./docs/asymetic.md)
    * My working examples:
        * [https://github.com/paulwizviz/go-crypto](https://github.com/paulwizviz/go-crypto)
* Modular Mathematics
    * [The Mathematics of Cryptography](https://www.youtube.com/watch?v=uNzaMrcuTM0)
    * [Modular Arithmetic Visually Explained](https://www.youtube.com/watch?v=lJ3CD9M3nEQ)
* Symmetric
    * [References](./docs/symmetric.md)
    * My working examples:
        * [https://github.com/paulwizviz/go-crypto](https://github.com/paulwizviz/go-crypto)
* Stream and block ciphers
    * [Streams and block ciphers](https://www.youtube.com/watch?v=7J2XbZNNF4A)
    * [Block Cipher Modes - CompTIA Security+ SY0-501 - 6.2](https://www.youtube.com/watch?v=6rE-KlhBlq4)

### Security

* Checksum
    * References:
        * [Definition of checksum](https://www.techtarget.com/searchsecurity/definition/checksum)
    * My working examples:
        * [https://github.com/paulwizviz/go-security](https://github.com/paulwizviz/go-security)
* Digital certificates
    * [References](./docs/certs.md)
    * My working examples:
        * [https://github.com/paulwizviz/go-security](https://github.com/paulwizviz/go-security)
* Public Key Infrastructure
    * References
        * [PKI Components - CompTIA Security+ SY0-501 - 6.4](https://www.youtube.com/watch?v=3yuad7_bszE)
    * My working examples:
        * [https://github.com/paulwizviz/go-security](https://github.com/paulwizviz/go-security)
* Transport Layer Security
    * My working examples:
        * [https://github.com/paulwizviz/go-security](https://github.com/paulwizviz/go-security)

## Distributed and Decentralized Systems

A distributed system is a type of system architectural pattern where processes is distributed across multiple platforms or nodes. There are two broad categories of distributed system: centralised and decentralised. For decentralized version refer to [my blockchain project](https://github.com/paulwizviz/my-blockchain). Here the focus is on centralised systems.

### Architectural patterns

* Concepts
    * [Microservices explained - the What, Why and How?](https://www.youtube.com/watch?v=rv4LlmLmVWk).
    * [7 Most-Used Distributed System Patterns](https://www.youtube.com/watch?v=nH4qjmP2KEE).
    * [The Many Meanings of Event-Driven Architecture by Martin Fowler](https://www.youtube.com/watch?v=STKCRSUsyP0)
    * [Creating event-driven microservices: the why, how and what by Andrew Schofield](https://www.youtube.com/watch?v=ksRCq0BJef8)
* My working examples
    * [learn-microservices](https://github.com/paulwizviz/learn-microservices)

### Communication patterns

* GraphQL
    * My working examples:
        * [graphql-template](https://github.com/paulwizviz/graphql-template)
* GRPC and Protobuf
    * My working examples:
        * [Protobuf template](https://github.com/paulwizviz/protobuf-lib-template)
* REST
    * [Concepts](./docs/rest.md)
* MQTT
    * [Concepts](./docs/mqtt.md)
    * My working examples:
        * [go-mqtt](https://github.com/paulwizviz/go-mqtt)
* Kafka
    * [Concepts](./docs/kafka.md)
    * My working examples:
        * [go-kafka](https://github.com/paulwizviz/go-kafka)

## Databases

There are two categorise of databases: NoSQL and SQL databases.

### NoSQL
    
* Concepts
    * [What is NoSQL?](https://www.mongodb.com/resources/basics/databases/nosql-explained)
* My working examples:
    * [go-cockroachdb](https://github.com/paulwizviz/go-cockroachdb)
    * [go-mongodb](https://github.com/paulwizviz/go-mongodb)
    * [go-redis](https://github.com/paulwizviz/go-redis)
    * [go-keyvaluedb](https://github.com/paulwizviz/go-keyvaluedb)
    * [learn-elastics](https://github.com/paulwizviz/learn-elastic)

### SQL databases

Refer to my Git repository [learn-sql](https://github.com/paulwizviz/learn-sql) for further discussion on this topic.

## Data Serialization

This section discuss all things related to data encoding formats.

### Abstract Syntax Notation One (ASN.1)

Abstract Syntax Notation One (ASN.1) is a standard interface description language for defining data structures that can be serialized and deserialized in a cross-platform way. It is broadly used in telecommunications and computer networking, and especially in cryptography.

* References:
    * [Introduction to ASN.1](https://www.itu.int/en/ITU-T/asn1/Pages/introduction.aspx)
    * [A Warm Welcome to ASN.1 and DER](https://letsencrypt.org/docs/a-warm-welcome-to-asn1-and-der/)
    * [OSS Nokalva - ASN](https://www.oss.com/resources/resources.html)
    * [ASN.1 Quick Reference](https://www.oss.com/asn1/resources/asn1-made-simple/asn1-quick-reference.html)
    * [ASN1 Simple types](https://www.obj-sys.com/asn1tutorial/node10.html)
    * [A Layman's Guide to a Subset of ASN.1, BER, and DER](http://luca.ntop.org/Teaching/Appunti/asn1.html)
* Working Examples
    * [My Go Implementation](https://github.com/paulwizviz/go-serialization.git)

### Base64

In computer programming, Base64 is a group of binary-to-text encoding schemes that represent binary data (more specifically, a sequence of 8-bit bytes) in sequences of 24 bits that can be represented by four 6-bit Base64 digits.

* References
    * [The Base16, Base32, and Base64 Data Encodings](https://datatracker.ietf.org/doc/html/rfc4648)
    * [Base64](https://en.wikipedia.org/wiki/Base64)
* Working Examples
    * [My Go Implementation](https://github.com/paulwizviz/go-serialization.git)

### Distinguished Encoding Rules (DER) encoding

DER is a binary encoding for X.509 certificates and private keys. DER-encoded files are usually found with the extensions `.der` and `.cer`.

### Gob

This is a Go-specific data package for communicating between two servers written in Go.

* References
    * [Gobs of data](https://go.dev/blog/gob)
* Working Examples
    * [My Go Implementation](https://github.com/paulwizviz/go-serialization.git)

### Ini File

A text based configuration file comprising of key value pair

* References
    * [INI file](https://en.wikipedia.org/wiki/INI_file)
* Working Examples
    * [My Go Implementation](https://github.com/paulwizviz/go-serialization.git)

### Privacy Enhanced Mail (PEM) Encoding

A PEM file is a text file containing one or more items in Base64 ASCII encoding, each with plain-text headers and footers (e.g. -----BEGIN CERTIFICATE----- and -----END CERTIFICATE-----).

PEM files are usually seen with the extensions `.crt`, `.pem`, `.cer`, and `.key` (for private keys)

Example of PEM file

```text
-----BEGIN CERTIFICATE-----
MIIH/TCCBeWgAwIBAgIQaBYE3/M08XHYCnNVmcFBcjANBgkqhkiG9w0BAQsFADBy
MQswCQYDVQQGEwJVUzEOMAwGA1UECAwFVGV4YXMxEDAOBgNVBAcMB0hvdXN0b24x
ETAPBgNVBAoMCFNTTCBDb3JwMS4wLAYDVQQDDCVTU0wuY29tIEVWIFNTTCBJbnRl
cm1lZGlhdGUgQ0EgUlNBIFIzMB4XDTIwMDQwMTAwNTgzM1oXDTIxMDcxNjAwNTgz
M1owgb0xCzAJBgNVBAYTAlVTMQ4wDAYDVQQIDAVUZXhhczEQMA4GA1UEBwwHSG91
c3RvbjERMA8GA1UECgwIU1NMIENvcnAxFjAUBgNVBAUTDU5WMjAwODE2MTQyNDMx
FDASBgNVBAMMC3d3dy5zc2wuY29tMR0wGwYDVQQPDBRQcml2YXRlIE9yZ2FuaXph
dGlvbjEXMBUGCysGAQQBgjc8AgECDAZOZXZhZGExEzARBgsrBgEEAYI3PAIBAxMC
VVMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHheRkbb1FCc7xRKst
wK0JIGaKY8t7JbS2bQ2b6YIJDgnHuIYHqBrCUV79oelikkokRkFvcvpaKinFHDQH
UpWEI6RUERYmSCg3O8Wi42uOcV2B5ZabmXCkwdxY5Ecl51BbM8UnGdoAGbdNmiRm
SmTjcs+lhMxg4fFY6lBpiEVFiGUjGRR+61R67Lz6U4KJeLNcCm07QwFYKBmpi08g
dygSvRdUw55Jopredj+VGtjUkB4hFT4GQX/ght69Rlqz/+8u0dEQkhuUuucrqalm
SGy43HRwBfDKFwYeWM7CPMd5e/dO+t08t8PbjzVTTv5hQDCsEYIV2T7AFI9ScNxM
kh7/AgMBAAGjggNBMIIDPTAfBgNVHSMEGDAWgBS/wVqH/yj6QT39t0/kHa+gYVgp
vTB/BggrBgEFBQcBAQRzMHEwTQYIKwYBBQUHMAKGQWh0dHA6Ly93d3cuc3NsLmNv
bS9yZXBvc2l0b3J5L1NTTGNvbS1TdWJDQS1FVi1TU0wtUlNBLTQwOTYtUjMuY3J0
MCAGCCsGAQUFBzABhhRodHRwOi8vb2NzcHMuc3NsLmNvbTAfBgNVHREEGDAWggt3
d3cuc3NsLmNvbYIHc3NsLmNvbTBfBgNVHSAEWDBWMAcGBWeBDAEBMA0GCyqEaAGG
9ncCBQEBMDwGDCsGAQQBgqkwAQMBBDAsMCoGCCsGAQUFBwIBFh5odHRwczovL3d3
dy5zc2wuY29tL3JlcG9zaXRvcnkwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUF
BwMBMEgGA1UdHwRBMD8wPaA7oDmGN2h0dHA6Ly9jcmxzLnNzbC5jb20vU1NMY29t
LVN1YkNBLUVWLVNTTC1SU0EtNDA5Ni1SMy5jcmwwHQYDVR0OBBYEFADAFUIazw5r
ZIHapnRxIUnpw+GLMA4GA1UdDwEB/wQEAwIFoDCCAX0GCisGAQQB1nkCBAIEggFt
BIIBaQFnAHcA9lyUL9F3MCIUVBgIMJRWjuNNExkzv98MLyALzE7xZOMAAAFxM0ho
bwAABAMASDBGAiEA6xeliNR8Gk/63pYdnS/vOx/CjptEMEv89WWh1/urWIECIQDy
BreHU25DzwukQaRQjwW655ZLkqCnxbxQWRiOemj9JAB1AJQgvB6O1Y1siHMfgosi
LA3R2k1ebE+UPWHbTi9YTaLCAAABcTNIaNwAAAQDAEYwRAIgGRE4wzabNRdD8kq/
vFP3tQe2hm0x5nXulowh4Ibw3lkCIFYb/3lSDplS7AcR4r+XpWtEKSTFWJmNCRbc
XJur2RGBAHUA7sCV7o1yZA+S48O5G8cSo2lqCXtLahoUOOZHssvtxfkAAAFxM0ho
8wAABAMARjBEAiB6IvboWss3R4ItVwjebl7D3yoFaX0NDh2dWhhgwCxrHwIgCfq7
ocMC5t+1ji5M5xaLmPC4I+WX3I/ARkWSyiO7IQcwDQYJKoZIhvcNAQELBQADggIB
ACeuur4QnujqmguSrHU3mhf+cJodzTQNqo4tde+PD1/eFdYAELu8xF+0At7xJiPY
i5RKwilyP56v+3iY2T9lw7S8TJ041VLhaIKp14MzSUzRyeoOAsJ7QADMClHKUDlH
UU2pNuo88Y6igovT3bsnwJNiEQNqymSSYhktw0taduoqjqXn06gsVioWTVDXysd5
qEx4t6sIgIcMm26YH1vJpCQEhKpc2y07gRkklBZRtMjThv4cXyyMX7uTcdT7AJBP
ueifCoV25JxXuo8d5139gwP1BAe7IBVPx2u7KN/UyOXdZmwMf/TmFGwDdCfsyHf/
ZsB2wLHozTYoAVmQ9FoU1JLgcVivqJ+vNlBhHXhlxMdN0j80R9Nz6EIglQjeK3O8
I/cFGm/B8+42hOlCId9ZdtndJcRJVji0wD0qwevCafA9jJlHv/jsE+I9Uz6cpCyh
sw+lrFdxUgqU58axqeK89FR+No4q0IIO+Ji1rJKr9nkSB0BqXozVnE1YB/KLvdIs
uYZJuqb2pKku+zzT6gUwHUTZvBiNOtXL4Nxwc/KT7WzOSd2wP10QI8DKg4vfiNDs
HWmB1c4Kji6gOgA5uSUzaGmq/v4VncK5Ur+n9LbfnfLc28J5ft/GotinMyDk3iar
F10YlqcOmeX1uFmKbdi/XorGlkCoMF3TDx8rmp9DBiB/
-----END CERTIFICATE-----
```

* Working Examples
    * [My Go Implementation](https://github.com/paulwizviz/go-serialization.git)

### The Concise Binary Object Representation (CBOR)

The Concise Binary Object Representation (CBOR) is a data format whose design goals include the possibility of extremely small code size, fairly small message size, and extensibility without the need for version negotiation.

* References
    * [RFC 8949](https://datatracker.ietf.org/doc/html/rfc8949)
    * [CBOR](https://cbor.io/)
* Working Examples
    * [My Go Implementation](https://github.com/paulwizviz/go-serialization.git)

### Tom's Obvious Minimal Language (TOML)

TOML is a minimal configuration file format that's easy to read due to obvious semantics. TOML is designed to map unambiguously to a hash table.

* References
    * [Official Documentation](https://toml.io/en/)
* Working Examples
    * [My Go Implementation](https://github.com/paulwizviz/go-serialization.git)

### YAML Ain’t Markup Language (YAML)

YAML (a recursive acronym for “YAML Ain’t Markup Language”) is a data serialization language based on a the use of indentation. It is intended to be human readable.

* References
    * [Official documentation](https://yaml.org/spec/1.2.2/)
* Working Examples
    * [My Go Implementation](https://github.com/paulwizviz/go-serialization.git)

## Networking

Here we discuss technologies related to networking concepts, tools and programming.

### Concepts

* [Practical Networking](https://www.youtube.com/watch?v=bj-Yfakjllc&list=PLIFyRwBY_4bRLmKfP1KnZA6rZbRHtxmXi)
* Software Networking and Interfaces on Linux
    * [Part 1](https://www.youtube.com/watch?v=EnAZB8GI97c)
    * [Part 2](https://www.youtube.com/watch?v=5WNEpE1vLvc)

### OSI model

![OSI Model](./assets/img/OSI-7-layers.jpg)

* Level 7
    * HTTP 
    * FTP
    * SMTP
* Level 4
    * Transmission Control Protocol, TCP
    * UDP
* Level 3
    * [Internet Protocol]((./docs/ip.md))
    * ARP

### Tools

* [Deep Dive: The ip Command in Linux](https://www.youtube.com/watch?v=30mQ4fD5kMI)
* [ifconfig mac](https://www.youtube.com/watch?v=4-5x7iLiVSg)

### Network Working Group - RFC

* [A TCP/IP Tutorial](https://www.ietf.org/rfc/rfc1180.txt)
* [Internet Control Message Protocol](https://www.ietf.org/rfc/rfc792.txt)
* [Transmission Control Protocol](https://www.ietf.org/rfc/rfc793.txt)
* [User Datagram Protocol](https://www.ietf.org/rfc/rfc768.txt)

### Programming

* [libp2p-pubsub Peer Discovery with Kademlia DHT](https://medium.com/rahasak/libp2p-pubsub-peer-discovery-with-kademlia-dht-c8b131550ac7)
* My working examples
    * [https://github.com/paulwizviz/go-networking.git](https://github.com/paulwizviz/go-networking.git)

### Summary Projects

The following are projects building applications that combines the concepts covered here.

* [lotterystat](https://github.com/paulwizviz/lotterystat.git) -- this project demonstrate SQL data integrations and Go concurrency patterns.
* [datalake](https://github.com/paulwizviz/datalake.git) -- this project demonstrates an application using PSQL, GRPC and integration with AWS S3 storage.

## Disclaimers

The content in this project is intended for educational purposes and is subject to changes without notice.