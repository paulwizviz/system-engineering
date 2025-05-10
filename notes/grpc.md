# gRPC

gRPC is an open-source and cross-platform Remote Procedure Call (RPC) framework. It uses HTTP/2 for transport and Protocol Buffers (Protobuf) for data serialisation.

## Core Features

* **High Performance**
  * **HTTP/2**: gRPC uses HTTP/2 as its transport protocol, which offers several advantages over HTTP/1.1, including multiplexing (multiple requests and responses over a single connection), header compression, and bidirectional streaming. This results in lower latency and improved bandwidth utilization.
  * **Protocol Buffers (protobuf)**: gRPC uses Protocol Buffers as its Interface Definition Language (IDL) and underlying message serialization format. Protobuf is a binary serialization format that is much more compact and faster to serialize and deserialize compared to text-based formats like JSON or XML. This leads to smaller message sizes and quicker data transfer.
* **Strongly Typed Contracts**: gRPC relies on .proto files to define services and message formats. This contract-first approach ensures that both the client and server have a clear understanding of the data structures and available procedures, leading to more robust and less error-prone communication.
* **Code Generation**: The Protocol Buffers compiler (protoc) can generate client and server code in numerous programming languages (including C++, C#, Go, Java, Python, Ruby, and more) directly from the .proto definitions. This eliminates the need for manual serialization/deserialization and provides strongly-typed APIs, improving developer productivity.
* **Multiple Communication Patterns**: gRPC supports four types of method calls defined in the service definition.
* **Unary RPC**: A simple request-response model where the client sends a single request and the server returns a single response.
* **Server Streaming RPC**: The client sends a single request, and the server sends back a stream of responses.
* **Client Streaming RPC**: The client sends a stream of requests to the server, which responds with a single response (usually after receiving all client requests).
* **Bidirectional Streaming RPC**: Both the client and server can send a stream of messages to each other simultaneously. This enables real-time, continuous communication.
* **Language Agnostic**: gRPC is designed to be cross-platform and language-agnostic, allowing services written in different languages to communicate seamlessly.
* **Security**: gRPC has built-in support for secure communication using TLS/SSL to encrypt data in transit and offers various authentication mechanisms, including token-based authentication (like JWT) and mutual TLS (mTLS).
* **Integration**: gRPC provides features like interceptors for tasks such as logging, tracing, authentication, and authorization, making it easier to integrate with other infrastructure components. It also offers pluggable support for load balancing and health checking.

## Use Cases for gRPC

gRPC is well-suited for various scenarios, including:

* **Microservices**: Its high performance and language interoperability make it ideal for communication between internal services in a microservices architecture, where efficiency and low latency are critical.
* **Mobile and Web Applications**: gRPC can efficiently connect mobile and web clients to backend services, reducing bandwidth consumption and improving performance, especially in constrained network environments.
* **Real-time Applications**: The bidirectional streaming capabilities of gRPC are excellent for applications requiring real-time data exchange, such as chat applications, live dashboards, financial trading platforms, and online gaming.
* **Polyglot Systems**: When building systems with components written in different programming languages, gRPC provides a unified way for these components to communicate effectively.
* **Inter-process Communication (IPC)**: gRPC can be used for communication between different processes running on the same machine using transports like Unix domain sockets.
* **Internet of Things (IoT)**: The lightweight nature of Protocol Buffers makes gRPC suitable for communication with resource-constrained IoT devices.

## gRPC vs REST

| Feature | gRPC | REST |
| --- | --- | --- |
| Protocol | HTTP/2 | HTTP/1.1 (typically), can use HTTP/2 |
| Data Format | Protocol Buffers (binary) | JSON (usually), XML, etc. (text-based) |
| API Design | RPC (operations/functions) | Resource-based (nouns/entities) |
| Streaming | Built-in bidirectional streaming | Limited to request-response |
| Code Generation | Native support via protoc | Requires third-party tools (e.g., Swagger) |
| Performance | Generally faster and more efficient | Can be less efficient due to text format |
| Coupling | Tightly coupled (due to shared .proto) | Loosely coupled |
| Browser Support | Requires gRPC-Web for direct browser use | Widely supported natively |

## References

* [gRPC](https://grpc.io/docs/what-is-grpc/introduction/)
