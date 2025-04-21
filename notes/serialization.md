# Data Serialization

This section discuss all things related to data encoding formats.

## Abstract Syntax Notation One (ASN.1) 

A standard interface description language for defining data structures that can be serialized and deserialized in a cross-platform way. It is broadly used in telecommunications and computer networking, and especially in cryptography.

* [Introduction to ASN.1](https://www.itu.int/en/ITU-T/asn1/Pages/introduction.aspx)
* [A Warm Welcome to ASN.1 and DER](https://letsencrypt.org/docs/a-warm-welcome-to-asn1-and-der/)
* [OSS Nokalva - ASN](https://www.oss.com/resources/resources.html)
* [ASN.1 Quick Reference](https://www.oss.com/asn1/resources/asn1-made-simple/asn1-quick-reference.html)
* [ASN1 Simple types](https://www.obj-sys.com/asn1tutorial/node10.html)
* [A Layman's Guide to a Subset of ASN.1, BER, and DER](http://luca.ntop.org/Teaching/Appunti/asn1.html)

## Base 64 

[Base64](https://en.wikipedia.org/wiki/Base64) - A group of binary-to-text encoding schemes that represent binary data (more specifically, a sequence of 8-bit bytes) in sequences of 24 bits that can be represented by four 6-bit Base64 digits.

* [RFC 4648](https://datatracker.ietf.org/doc/html/rfc4648)

## Distinguished Encoding Rules (DER) encoding

A binary encoding for X.509 certificates and private keys. DER-encoded files are usually found with the extensions `.der` and `.cer`.

## Concise Binary Object Representation (CBOR)

A data format whose design goals include the possibility of extremely small code size, fairly small message size, and extensibility without the need for version negotiation.

* [Official documentation](https://cbor.io/)
* [RFC 8949](https://datatracker.ietf.org/doc/html/rfc8949)

## Gob

A Go-specific data package for communicating between two servers written in Go.

* [Official Documentation](https://go.dev/blog/gob)

## INI File

A text based configuration file comprising of key value pair.
* [Wiki](https://en.wikipedia.org/wiki/INI_file)

## Privacy Enhanced Main (PEM) Encoding
* [PEM Format](./docs/pem.md)

## Protobuf

* [Official documentation](https://protobuf.dev/)

## Tom's Obvious Minimal Language (TOML)

TOML is a minimal configuration file format that's easy to read due to obvious semantics. TOML is designed to map unambiguously to a hash table.
* [Official documentation](https://toml.io/en/)

## YAML Ain’t Markup Language (YAML)

A recursive acronym for “YAML Ain’t Markup Language” is a data serialization language based on a the use of indentation. It is intended to be human readable.
* [Official documentation](https://yaml.org/spec/1.2.2/)
