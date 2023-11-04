# Overview

My projects discussing topics related to system engineering that I encountered and worked on over my career.

## Algorithm and performance analysis

* [Go Algorithm and data models](https://github.com/paulwizviz/go-algo)
* [Performance measurement](https://github.com/paulwizviz/compute-performance.git)

## Application Programming Interface (API) design

<u>Two general's problem</u>

The two general's problem is an thought experiment to illustrate problems encountered when you have two systems communicating with each other. 

[The Two Generals’ Problem](https://www.youtube.com/watch?v=IP-rGJKSZ3s)
[Distributed Systems 2.1: The two generals problem](https://www.youtube.com/watch?v=MDuWnzVnfpI)

<u>Messaging protocols</u>

* [GraphQL](https://github.com/paulwizviz/learn-graphql)
* [GRPC and Protobuf](https://github.com/paulwizviz/protobuf-lib-template)
* [JSON-RPC](https://github.com/paulwizviz/learn-jsonrpc.git)
* OAuth
* [REST](https://github.com/paulwizviz/learn-rest)

## Cloud

* [Learn Google Cloud Platform](https://github.com/paulwizviz/learn-gcp)
* [Learn Amazon Web Services](https://github.com/paulwizviz/learn-aws)
* Digital ocean

## Container technologies

A container technology is a lightweight, executable unit of software that packs up application code and dependencies such as binary code, libraries, and configuration files for easy deployment across different computing environments[1](https://www.solarwinds.com/resources/it-glossary/container).

* [General container](https://github.com/paulwizviz/learn-container) - This cover technologies that is not based on Docker technologies and alternative approach to packaging applications into containers.
* [Docker](https://github.com/paulwizviz/learn-docker.git)
* [Kubernetes](https://github.com/paulwizviz/learn-k8s.git)

## Distributed and decentralized systems

Technically, a decentralised system is a type of distributed system. They have similar characteristics:

1. Computation are distributed across multiple nodes.
1. They are susceptable to Byzantine faults.

The differences between a distributed and a decentralised system are:

1. Distributed systems have a degree of centralised oversight, so Byzantine faults are largely mitigated.
1. Decentralised systems have nodes that are independently managed and are highly subsceptable to Byzantine faults. 

<u>Distributed system architectural pattern</u>

* [Top 7 Most-Used Distributed System Patterns](https://www.youtube.com/watch?v=nH4qjmP2KEE)
* Please refer to the section named "Application Programming Interface (API) design" for detailed references
* [Microservices architectural pattern](https://github.com/paulwizviz/learn-microservices)

<u>Decentralized systems</u>

This type of architectural system is related blockchain. Please refer to [My Blockchain](https://github.com/paulwizviz/my-blockchain).


## Databases

* [CockroachDB](https://github.com/paulwizviz/learn-cockroachdb)
* [MongoDB](https://github.com/paulwizviz/learn-mongodb)
* [RedisDB](https://github.com/paulwizviz/learn-redis)
* [Key Value DB](https://github.com/paulwizviz/learn-keyvaluedb)
* [SQL Databases](https://github.com/paulwizviz/learn-sql)

## Event driven technologies

Concepts

* [The Many Meanings of Event-Driven Architecture by Martin Fowler](https://www.youtube.com/watch?v=STKCRSUsyP0)
* [Creating event-driven microservices: the why, how and what by Andrew Schofield](https://www.youtube.com/watch?v=ksRCq0BJef8)


Topics

Please refers to the following for detail descriptions:

* [MQTT](https://github.com/paulwizviz/learn-mqtt)
* [Kafka](https://github.com/paulwizviz/learn-kafka)

## Networking

The topics in this section are categorised to reflect the OSI model:

![OSI Model](./images/OSI-7-layers.jpg)

Concepts

* [What is OSI Model | Real World Examples ](https://www.youtube.com/watch?v=0y6FtKsg6J4)

## Security

* [Cryptography](https://github.com/paulwizviz/learn-crypto)
* [Security Frameworks](https://github.com/paulwizviz/learn-security)

## Summary Examples

The following are working examples demonstrating the use of techniques and technologies mentioned above. 

* [Go web](https://github.com/paulwizviz/go-web) - An example demonstrating an approach to combine ReactJS and Go app to produce native and container apps.
* [Lottery stats](https://github.com/paulwizviz/lotterystat) - An example demonstraing an end-to-end solution from backend to frontend coupled with the application of agile methodology
* [Supply chain with blockchain](https://github.com/paulwizviz/mengawas) - Examples demonstrating the use of IoT and Blockchain

## Copyright

Unless otherwise specificed, the copyrights all materials in this project are assigned as follows.

Copyright 2022 Paul Sitoh

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.