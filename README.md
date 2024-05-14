# Overview

This project contains:

* References aspects of system engineering concepts and principles.
* Links to working examples created by me to illustrate application of system engineering principles.

## Algorithms and Performance Analysis

References to concepts and my working examples related to algorithms and performance analysis.

### Concepts
* [Algorithms and Data Structures Tutorial - Full Course for Beginners](https://www.youtube.com/watch?v=8hly31xKli0)
* [A beginner's guide to Big O Notation](https://robbell.io/2009/06/a-beginners-guide-to-big-o-notation)

### My working examples
* [Go algorithm and data models](https://github.com/paulwizviz/go-algorithm)
* [Go performance measurement](https://github.com/paulwizviz/go-performance.git)

## Container Technologies

Containers are technologies that allow the packaging and isolation of applications with their entire runtime environment, all of the files, necessary to run.

### Concepts

* [What Is Container Technology?](https://www.solarwinds.com/resources/it-glossary/container)
* [Containers vs Virtualization by Miona Aleksic](https://ubuntu.com/blog/containerization-vs-virtualization):
![vm vs containers](./assets/img//vm-vs-containers.png)

### Types

* `chroot` (Change root) is a Unix system utility used to change the apparent root directory to create a new environment logically separate from the main system's root directory.  
    * [How to Use the chroot Command on Linux](https://www.howtogeek.com/441534/how-to-use-the-chroot-command-on-linux/)
    * [Working examples](./examples/chroot/jailer.sh)

* Docker
    * [Useful references](./docs/docker.md)
    * [My working examples](https://github.com/paulwizviz/go-docker.git)
* Kubernetes
    * Concepts
        * [Kubernetes Components](https://kubernetes.io/docs/concepts/overview/components/)
        * [The Kubernetes API](https://kubernetes.io/docs/concepts/overview/kubernetes-api/)
        * [Working with Kubernetes Objects](https://kubernetes.io/docs/concepts/overview/working-with-objects/)
        * [Cluster Architecture](https://kubernetes.io/docs/concepts/architecture/)
    * [My working examples](https://github.com/paulwizviz/go-k8s.git)

## Distributed and Decentralized Systems

A distributed system is a type of system architectural pattern where processes is distributed across multiple platforms or nodes. There are two broad categories of distributed system: centralised and decentralised. We'll discuss the decentralized version in [my blockchain project](https://github.com/paulwizviz/my-blockchain).

Here we'll focus on centralised version.

### Architectural patterns

* Concepts
    * [Microservices explained - the What, Why and How?](https://www.youtube.com/watch?v=rv4LlmLmVWk).
    * [7 Most-Used Distributed System Patterns](https://www.youtube.com/watch?v=nH4qjmP2KEE).
    * [The Many Meanings of Event-Driven Architecture by Martin Fowler](https://www.youtube.com/watch?v=STKCRSUsyP0)
    * [Creating event-driven microservices: the why, how and what by Andrew Schofield](https://www.youtube.com/watch?v=ksRCq0BJef8)

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

### SQL databases

* Concepts
    * [SQL Tutorial](https://www.w3schools.com/sql/default.asp)
    * [SQLite vs MySQL vs PostgreSQL: A Comparison Of Relational Database Management Systems](https://www.digitalocean.com/community/tutorials/sqlite-vs-mysql-vs-postgresql-a-comparison-of-relational-database-management-systems)
* My working examples
    * [go-sql](https://github.com/paulwizviz/go-sql)

## Networking

Here we discuss technologies related to networking, with a focusing on layer 1 to 4 of the OSI model.

![OSI Model](./assets/img/OSI-7-layers.jpg)

### Concepts

* [Practical Networking](https://www.youtube.com/watch?v=bj-Yfakjllc&list=PLIFyRwBY_4bRLmKfP1KnZA6rZbRHtxmXi).
* [Software Networking and Interfaces on Linux: Part 1](https://www.youtube.com/watch?v=EnAZB8GI97c)

### My working examples

* [go-networking](https://github.com/paulwizviz/go-networking.git)

## Cryptography and Security

Here we discuss all things related to cryptogrpahy and security

### Cryptography

* Asymetric
    * [Concepts](./docs/asymetic.md)
    * My working examples:
        * [go-crypto](https://github.com/paulwizviz/go-crypto)
* Modular Mathematics
    * [The Mathematics of Cryptography](https://www.youtube.com/watch?v=uNzaMrcuTM0)
    * [Modular Arithmetic Visually Explained](https://www.youtube.com/watch?v=lJ3CD9M3nEQ)
* Symmetric
    * [Concepts](./docs/symmetric.md)
    * My working examples:
        * [go-crypto](https://github.com/paulwizviz/go-crypto)

### Security

* Digital certificates
    * [Concepts](./docs/certs.md)
    * My working examples:
        * [go-security](https://github.com/paulwizviz/go-security)
* Public Key Infrastructure - A public key infrastructure (PKI) is a set of roles, policies, hardware, software and procedures needed to create, manage, distribute, use, store and revoke digital certificates and manage public-key encryption (Source: [wiki][https://en.wikipedia.org/wiki/Public_key_infrastructure]).
    * Concepts
        * [PKI Components - CompTIA Security+ SY0-501 - 6.4](https://www.youtube.com/watch?v=3yuad7_bszE)
    * My working examples:
        * [go-security](https://github.com/paulwizviz/go-security)
* Transport Layer Security - Transport Layer Security (TLS), the successor of the now-deprecated Secure Sockets Layer (SSL), is a cryptographic protocol designed to provide communications security over a computer network. The protocol is widely used in applications such as email, instant messaging, and voice over IP, but its use in securing HTTPS remains the most publicly visible (Source: [wiki](https://en.wikipedia.org/wiki/Transport_Layer_Security))
    * My working examples:
        * [go-security](https://github.com/paulwizviz/go-security)

## Disclaimers

The content in this project is intended for educational purposes and is subject to changes without notice.