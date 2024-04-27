# Overview

My projects discussing topics related to system engineering that I encountered and worked on over my career.

## Algorithm and performance analysis

* [Go Algorithm and data models](https://github.com/paulwizviz/go-algo)
* [Performance measurement](https://github.com/paulwizviz/compute-performance.git)

## Application Programming Interface (API) design

The following are a list of messaging protocols:

* [GraphQL](https://github.com/paulwizviz/learn-graphql)
* [GRPC and Protobuf](https://github.com/paulwizviz/protobuf-lib-template)
* [JSON-RPC](https://github.com/paulwizviz/learn-jsonrpc.git)
* OAuth
* [REST](https://github.com/paulwizviz/learn-rest)

## Container technologies

Containers are technologies that allow the packaging and isolation of applications with their entire runtime environment, all of the files, necessary to run.

Virtualisations provides similar goals but it is different from containers. Here is a summary of the differences by [Miona Aleksic](https://ubuntu.com/blog/containerization-vs-virtualization):

![vm vs containers](./assets/img//vm-vs-containers.png)

Please refer to the following for specific container technologies.

* `chroot` (Change root) is a Unix system utility used to change the apparent root directory to create a new environment logically separate from the main system's root directory.
    * [How to Use the chroot Command on Linux](https://www.howtogeek.com/441534/how-to-use-the-chroot-command-on-linux/)
    * [Working examples](./examples/chroot/jailer.sh)
* [Docker](https://github.com/paulwizviz/learn-docker.git)
* [Kubernetes](https://github.com/paulwizviz/learn-k8s.git)

### References

[What Is Container Technology?](https://www.solarwinds.com/resources/it-glossary/container) - A container is a lightweight package that includes code and dependencies together.

## Distributed and decentralized systems

A distributed system is a type of application where processes is distributed across multiple platforms or nodes. However, it is worth noting that there is a kind of distributed system that have developed of based on a peer-to-peer architecture, which I shall refer to as a decentralised system. 

The differences between a distributed and decentralised system are:

1. Distributed systems have a degree of centralised oversight, so [Byzantine faults](https://en.wikipedia.org/wiki/Byzantine_fault) are largely mitigated.
1. Decentralised systems have nodes that are independently managed and are highly subsceptable to Byzantine faults. 


### Distributed system architectural pattern

* [Top 7 Most-Used Distributed System Patterns](https://www.youtube.com/watch?v=nH4qjmP2KEE)
* Please refer to the section named "Application Programming Interface (API) design" for detailed references
* [Microservices architectural pattern](https://github.com/paulwizviz/learn-microservices)

### Decentralized systems

This type of architectural system is related blockchain. Please refer to [My Blockchain](https://github.com/paulwizviz/my-blockchain).

## Databases

* [CockroachDB](https://github.com/paulwizviz/learn-cockroachdb)
* [MongoDB](https://github.com/paulwizviz/learn-mongodb)
* [RedisDB](https://github.com/paulwizviz/learn-redis)
* [Key Value DB](https://github.com/paulwizviz/learn-keyvaluedb)
* [SQL Databases](https://github.com/paulwizviz/learn-sql)

## Event driven technologies

Here are references to concepts behind event driven technologies:

* [The Many Meanings of Event-Driven Architecture by Martin Fowler](https://www.youtube.com/watch?v=STKCRSUsyP0)
* [Creating event-driven microservices: the why, how and what by Andrew Schofield](https://www.youtube.com/watch?v=ksRCq0BJef8)

The following are programming techniques:

* [MQTT](https://github.com/paulwizviz/learn-mqtt)
* [Kafka](https://github.com/paulwizviz/learn-kafka)

## Networking

The mental model to explain network operation is the OSI model.

![OSI Model](./assets/img/OSI-7-layers.jpg)

To appreciate the working of networking concepts, please refer to [Practical Networking](https://www.youtube.com/watch?v=bj-Yfakjllc&list=PLIFyRwBY_4bRLmKfP1KnZA6rZbRHtxmXi)

Please also refer to my [Go network programming](https://github.com/paulwizviz/go-networking.git) for working example.

## Security

* [Cryptography](https://github.com/paulwizviz/learn-crypto)
* [Security Frameworks](https://github.com/paulwizviz/learn-security)

## Summary Examples

The following are working examples demonstrating the use of techniques and technologies mentioned above. 

* [Go web](https://github.com/paulwizviz/go-web) - An example demonstrating an approach to combine ReactJS and Go app to produce native and container apps.
* [Supply chain with blockchain](https://github.com/paulwizviz/mengawas) - Examples demonstrating the use of IoT and Blockchain

## Disclaimers

The content in this project are intended for educational purposes and is subject to changes without notice.