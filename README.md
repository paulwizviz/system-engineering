# Overview

In this project, you will find my collection of references to concepts and working examples related to the following topics:

* [Algorithms and Performance Analysis](#algorithms-and-performance-analysis)
* [Container Technologies](#container-technologies)
* [Cryptography and Security](#cryptography-and-security)
* [Distributed and Decentralized Systems](#distributed-and-decentralized-systems)
* [Databases](#databases)
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

Here we discuss all things related to cryptography and security

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

A distributed system is a type of system architectural pattern where processes is distributed across multiple platforms or nodes. There are two broad categories of distributed system: centralised and decentralised. We'll discuss the decentralized version in [my blockchain project](https://github.com/paulwizviz/my-blockchain).

Here we'll focus on centralised version.

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

There are broadly two categorise of databases: NoSQL and SQL databases.

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

## Disclaimers

The content in this project is intended for educational purposes and is subject to changes without notice.