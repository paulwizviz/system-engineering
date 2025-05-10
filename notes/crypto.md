# Cryptography

This section discuss all things related to cryptography and security. [Cryptography Concepts - SY0-601 CompTIA Security+ : 2.8](https://www.youtube.com/watch?v=A6HNd1EGfIc)

## Asymmetric Cryptography

Asymmetric cryptography, also know as public key cryptography, uses a pair of keys: private and public for encryption and decryption. In this section we discuss asymmetric keys.

### Elliptic curve

Elliptic Curve Cryptography (ECC) is a key-based technique for encrypting data. ECC focuses on pairs of public and private keys for decryption and encryption (see [here](https://avinetworks.com/glossary/elliptic-curve-cryptography/)).

* NIST (National Institute of Standards and Technology) recommended.
  * The standard elliptic curves are P-224, P-256, P-384, and P-521.
* `secp256k1`:
  * This curve is specifically used in cryptocurrency applications like Bitcoin, Ethereum, and others. The specific curve and its implementations are chosen for their compatibility and performance benefits in blockchain-related operations.
  * Implementations often include specific optimizations such as the GLV endomorphism, which can speed up scalar multiplication. Additionally, implementations like libsecp256k1 include safeguards against side-channel attacks and provide efficient batch verification of signatures.
  * This curve is specifically used in cryptocurrency applications like Bitcoin, Ethereum, and others. The specific curve and its implementations are chosen for their compatibility and performance benefits in blockchain-related operations.
  * This curve has a different set of parameters and uses the equation y^2 = x^3 + 7, which is known as a Koblitz curve. It has specific properties that make it more efficient for certain operations (e.g., ECDSA signature verification) but potentially less secure against specific theoretical attacks.
* Elliptic Curve Digital Signature Algorithm (ECDSA)
  * An algorithm using keys derived from from elliptic curve cryptography to digitally sign and verify digital signature.
  * [Elliptic Curves - Computerphile](https://www.youtube.com/watch?v=NF1pwjL9-DE)

### Rivest-Shamir-Adleman (RSA)

There are two broad components when it comes to RSA cryptography, they are:

* Key Generation for encrypting and decrypting the data to be exchanged.
* Encryption/Decryption Function.
* [What Is RSA Algorithm and How Does It Work in Cryptography? by simplilearn](https://www.simplilearn.com/tutorials/cryptography-tutorial/rsa-algorithm).
* [The Mathematics of RSA and the Diffie-Hellman Protocol](https://www.youtube.com/watch?v=xmwxDHX6xUc)
* [RSA Algorithm - How does it work? - I'll PROVE it with an Example! -- Cryptography - Practical TLS](https://www.youtube.com/watch?v=Pq8gNbvfaoM)

## Symetric Encryption

Symmetric encryption is a type of encryption key management solution where only one key (a secret key) is used to both encrypt and decrypt electronic data.

### Advanced Eyncryption Standard (AES)

* AES is a block cipher.
* The key size can be 128/192/256 bits.
* Encrypts data in blocks of 128 bits each. That means it takes 128 bits as input and outputs 128 bits of encrypted cipher text as output.
* AES performs operations on bytes of data rather than in bits.

### References

* [Advanced Eyncryption Standard](https://www.geeksforgeeks.org/advanced-encryption-standard-aes/)
* [AES Explained (Advanced Encryption Standard) - Computerphile](https://www.youtube.com/watch?v=O4xNJsjtN6E)
* [What is symmetric encryption?](https://www.cryptomathic.com/news-events/blog/symmetric-key-encryption-why-where-and-how-its-used-in-banking)

## Modular Mathematics

* [The Mathematics of Cryptography](https://www.youtube.com/watch?v=uNzaMrcuTM0)
* [Modular Arithmetic Visually Explained](https://www.youtube.com/watch?v=lJ3CD9M3nEQ)

## Stream and block ciphers

* [Streams and block ciphers](https://www.youtube.com/watch?v=7J2XbZNNF4A)
* [Block Cipher Modes - CompTIA Security+ SY0-501 - 6.2](https://www.youtube.com/watch?v=6rE-KlhBlq4)

## Programming Examples

* [Go cryptographic programming](https://github.com/paulwizviz/go-crypto)
