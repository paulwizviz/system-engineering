# Internet of Things (IoT)

Networking technologies specifically designed for smart devices and sensors.

## Hardware

* **Sensors:** These devices collect data from the environment, such as temperature, pressure, light, and motion.
* **Actuators:** These devices can control physical systems, such as turning on and off lights, opening and closing valves, and moving motors.
* **Microcontrollers:** These small computers are used to process data from sensors and control actuators.
* **Connectivity hardware:** This includes devices such as Wi-Fi routers, Bluetooth chips, and cellular modems, which allow IoT devices to communicate with each other and with the internet.

## Protocols

IoT protocols are the standardised sets of rules that enable devices to communicate, exchange data, and interact within a network. These protocols are critical for ensuring interoperability across a vast ecosystem of heterogeneous devices, gateways, and cloud services. In the IoT landscape, protocols are broadly categorised by their function: some manage the underlying physical connectivity, while others facilitate efficient data exchange and messaging.

### Connectivity Protocols

How devices connect to the network:

#### Wi-Fi

A widely used wireless technology for connecting devices to a local network and the internet. It's common in homes and offices.

#### Bluetooth/Bluetooth Low Energy (BLE)

Short-range wireless technology often used for connecting personal devices like wearables and smartphones to IoT devices. BLE is designed for low power consumption.

#### Zigbee

A low-power, low-data rate wireless protocol ideal for mesh networks in home automation and industrial control.

#### Z-Wave

Another popular mesh network protocol primarily used for home automation.

#### Cellular (3G, 4G, 5G, LTE-M, NB-IoT)

These technologies enable IoT devices to connect directly to cellular networks, useful for devices that need wider coverage.

#### LoRaWAN (Long Range Wide Area Network)

Designed for long-range communication with low power consumption, suitable for applications like smart agriculture and environmental monitoring.

#### Sigfox

Another long-range, low-power wide-area network technology.

### Data Protocols

Data protocols define the rules and formats for how data is transmitted between devices or applications over a network. Their primary focus is the "how" of data transmission, specifying aspects such as:

* **Purpose:** Reliable delivery and routing of messages across the network.
* **Focus:** Addressing (where the data is going), Routing (how the data gets there), Error handling (how to deal with lost or corrupted data), and Connection management (how to establish and maintain connections).

Common IoT data protocols include:

#### MQTT (Message Queuing Telemetry Transport)

A lightweight messaging protocol ideal for constrained devices and unreliable networks. It's widely used in IoT for its efficiency and publish/subscribe mechanism.

#### CoAP (Constrained Application Protocol)

A web transfer protocol designed for low-power devices and lossy networks. It's similar to HTTP but optimised for IoT.

#### AMQP (Advanced Message Queuing Protocol)

A robust messaging protocol that ensures reliable message delivery. It's often used in industrial IoT applications.

#### HTTP/HTTPS

The foundation of the web, also used in IoT for devices that need to communicate with web services.

#### WebSockets

Enables real-time, bidirectional communication between devices and servers.

#### JetStream

A streaming data protocol built into the NATS server, designed for high-throughput, persistent, and reliable delivery of data streams. It features built-in flow control and ordered delivery. Well suited for high volume telemetry data, and use cases that require data durability.

| Feature | MQTT | CoAP | AMQP | HTTP/HTTPS | WebSockets | JetStream |
| --- | --- | --- | --- | --- | --- | --- |
| **Focus** | Constrained devices | Constrained devices | Reliable messaging | Web interaction | Real-time comms | Streaming data |
| **Model** | Publish/Subscribe | Request/Response | Message Queuing | Request/Response | Bidirectional | Publish/Subscribe |
| **Overhead** | Low | Low | High | High | Moderate | Moderate |
| **Reliability** | Variable (QoS) | Lower (UDP) | High | Variable (TCP) | Reliable (TCP) | High (Persistence) |
| **Complexity** | Low | Low | High | Moderate | Moderate | Moderate |
| **Use Cases** | Sensors, M2M | Smart devices | Industrial, finance | Web-connected devices | Real-time apps | High-volume IoT, telemetry, analytics |
| **Key Strengths** | Lightweight, efficient | Lightweight, UDP-based | Guaranteed delivery | Widely understood, tools | Real-time, bi-directional | High throughput, persistence, flow control |
| **Key Weaknesses** | Not always guaranteed delivery | UDP, less reliable than TCP | Complex, resource intensive | Resource-intensive | More complex than HTTP for simple data | Requires NATS server |

### Other Important Protocols

#### Modbus

An industrial protocol used for communication with programmable logic controllers (PLCs) and other industrial equipment.

#### OPC UA (OLE for Process Control Unified Architecture)

Another industrial protocol for data exchange and communication in automation systems.

#### DDS (Data Distribution Service)

A high-performance protocol for real-time data distribution, often used in applications like autonomous vehicles and robotics.

### Choosing the Right Protocol

Choosing the right protocol depends on several factors:

* **Range:** How far apart are the devices?
* **Bandwidth:** How much data needs to be transmitted?
* **Power consumption:** How much power do the devices use?
* **Security:** How important is data security?
* **Cost:** How much does it cost to implement the protocol?

## Data Serialisation

Data serialisation defines the format for how data is structured and encoded into a stream of bytes that can be transmitted over a network or stored. While data protocols focus on *how* data is moved, serialisation focuses on *what* the data looks like. Key aspects include:

* **Purpose:** Converting complex data structures into a flat, transmittable format.
* **Focus:** Data types (integers, strings, objects, etc.), Data structures (arrays, dictionaries, etc.), and Encoding (how to convert data into a binary or text format).

Commonly used serialisation formats in IoT include:

### JSON

[JSON](https://www.json.org/json-en.html)

### Concise Binary Object Representation (CBOR)

[CBOR](https://cbor.io/)

### XML

[XML](https://www.w3.org/TR/xml/)

## References

* [Unified Data Standards in IoT: Common Protocols, Challenges, and the Path to Interoperability - By Linh Chu Dieu, 21 November 2024](https://smartdev.com/unified-data-standards-in-iot-enabling-interoperability-and-seamless-communication/)
