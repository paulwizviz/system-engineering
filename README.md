# Overview

My projects discussing topics related to system engineering that I encountered and worked on over my career.

## Algorithm and Performance Analysis

* [Go Algorithm and data models](https://github.com/paulwizviz/go-algo)
* [Performance measurement](https://github.com/paulwizviz/compute-performance.git)

## Container Technologies

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

A distributed system is a type of system architectural pattern where processes is distributed across multiple platforms or nodes. There are, broadly speaking, two types of distributed systems:

* Client-server.
* Peer-to-peer.

For more information about distributed system, please refer to [Top 7 Most-Used Distributed System Patterns](https://www.youtube.com/watch?v=nH4qjmP2KEE)

### Client-server architectural pattern

In this pattern, your have the server responsible for doing much of the heavy load of processing data. The client, which could be as thin as a browser, that performs minimal processing. The server component could be divided into small processing units that talks to each other, typically, like mini client-server patterns. See [Microservices architectural pattern](https://github.com/paulwizviz/learn-microservices).

This type of pattern typically involves a degree of centralised oversight of the server end.

### Peer-to-peer architectural pattern

This pattern typically involves computation nodes acting both as a client and a server. This is a pattern more commonly, but not exclusively, found in systems that uses blockchain.

Blockchain based systems are best described as decentralized systems. In this case, every nodes are independently managed.  Please refer to [My Blockchain](https://github.com/paulwizviz/my-blockchain) for further discussion on this type of pattern.

## Databases

* NoSQL
    * [CockroachDB](https://github.com/paulwizviz/learn-cockroachdb)
    * [MongoDB](https://github.com/paulwizviz/learn-mongodb)
    * [RedisDB](https://github.com/paulwizviz/learn-redis)
    * [Key Value DB](https://github.com/paulwizviz/learn-keyvaluedb)
* [SQL Databases](https://github.com/paulwizviz/learn-sql)


## Interprocess Communications (IPCs)

Types of IPCs:

* Request-Response
* Event driven

### Request-Response model

* [GraphQL](https://github.com/paulwizviz/learn-graphql)
* [GRPC and Protobuf](https://github.com/paulwizviz/protobuf-lib-template)
* [JSON-RPC](https://github.com/paulwizviz/learn-jsonrpc.git)
* [REST](https://github.com/paulwizviz/learn-rest)

### Event driven model

Architectural patterns:

* [The Many Meanings of Event-Driven Architecture by Martin Fowler](https://www.youtube.com/watch?v=STKCRSUsyP0)
* [Creating event-driven microservices: the why, how and what by Andrew Schofield](https://www.youtube.com/watch?v=ksRCq0BJef8)

Messaging technologies:

* [MQTT](https://github.com/paulwizviz/learn-mqtt)
* [Kafka](https://github.com/paulwizviz/learn-kafka)

## Networking

The mental model to explain network operation is the OSI model.

![OSI Model](./assets/img/OSI-7-layers.jpg)

To appreciate the working of networking concepts, please refer to the following:

* [Practical Networking](https://www.youtube.com/watch?v=bj-Yfakjllc&list=PLIFyRwBY_4bRLmKfP1KnZA6rZbRHtxmXi).
* [Software Networking and Interfaces on Linux: Part 1](https://www.youtube.com/watch?v=EnAZB8GI97c)

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