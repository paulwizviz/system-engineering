# API Security

This aspect of security is concern with ensuring ligitimate access to resources behind the API.

Key considerations are:

* **Authentication:** This is like checking someone's ID before letting them in. You need to know who's making the request. Common methods include API keys (sort of like a secret handshake), OAuth 2.0 (a more sophisticated way of granting permission without sharing your password), and JWTs (JSON Web Tokens), which are like little digital passports containing information about the user.

* **Authorization:** Just because someone's got through the door doesn't mean they can have the run of the place. Authorization determines what a user is actually allowed to do once they're authenticated. For instance, a regular customer might be able to order food, but only the chef can change the menu. Role-based access control (RBAC) is a common way to manage this.

* **Rate Limiting and Throttling:** Imagine someone repeatedly hammering the "order" button. It could overwhelm your kitchen staff and stop everyone else from getting their food. Rate limiting puts a cap on how many requests a user can make within a certain timeframe, while throttling might temporarily slow down requests if things get too busy. This helps prevent denial-of-service (DoS) attacks.

* **Input Validation:** You wouldn't want someone ordering "a million chips" and breaking your system, would you? Input validation is about making sure the data sent to your API is in the expected format and within acceptable limits. This helps prevent all sorts of nasty things like SQL injection and cross-site scripting (XSS) attacks.

* **Encryption:** Sensitive information being passed back and forth should be scrambled up so that if anyone tries to eavesdrop, it just looks like gibberish. HTTPS (HTTP over TLS/SSL) is the standard for encrypting web traffic, including API calls.

* **API Gateways:** Think of an API gateway as a bouncer outside your restaurant. It acts as a single point of entry for all API requests, handling things like authentication, authorization, rate limiting, and logging before passing the request on to your actual APIs.

* **Regular Testing and Monitoring:** Just like you'd regularly check your kitchen for dodgy food, you need to regularly test your APIs for security vulnerabilities and keep an eye on how they're being used to spot any suspicious activity.

## Extermal vs Internal API

These are the security considerations for external and internal APIs

### External APIs (Public or Partner APIs)

* **Audience:** Designed for consumption by developers outside the organisation. This could be the general public (open APIs like Google Maps) or specific business partners (partner APIs).
* **Accessibility:** Accessible over the internet, often with self-service onboarding for developers (documentation, API keys, etc.). Partner APIs might require specific agreements and access controls.
* **Purpose:**
  * **Innovation:** Allows external developers to build new applications and integrations using the organisation's data or services.
  * **Reach:** Extends the organisation's reach and brand.
  * **Revenue:** Can be monetised directly or indirectly.
  * **Partnerships:** Enables seamless integration and data exchange with trusted partners.
* **Security:** Requires robust and well-defined security measures, including authentication, authorisation, rate limiting, and protection against external threats. Public APIs need careful consideration to avoid exposing sensitive internal data.
* **Design & Documentation:** Needs to be well-documented, user-friendly, and often adheres to industry standards to attract and support external developers.
* **Support & Maintenance:** Often requires dedicated support and ongoing maintenance to ensure stability and address issues for external consumers.
* **Evolution:** Changes need to be carefully managed and communicated to avoid breaking external integrations. Versioning is crucial.

### Internal APIs (Private APIs)

* **Audience:** Designed for use within the organisation by its own development teams or internal systems.
* **Accessibility:** Typically accessible only within the organisation's network or private cloud.
* **Purpose:**
  * **Integration:** Enables different internal systems and microservices to communicate and share data.
  * **Efficiency:** Improves development speed and reduces redundancy by allowing teams to reuse internal software assets.
  * **Standardisation:** Promotes consistent ways of accessing internal data and functionality.
  * **Modernisation:** Facilitates the modernisation of legacy systems by providing a controlled interface.
* **Security:** While still important, security focuses on controlling access within the organisation. Authentication and authorisation are crucial to ensure only authorised internal users and systems can access specific resources. Network security plays a significant role.
* **Design & Documentation:** Documentation is still important for internal teams but might not need the same level of public-facing polish as external APIs. Design can be more tailored to internal needs.
* **Support & Maintenance:** Support is typically handled internally between teams.
* **Evolution:** Changes can be implemented more flexibly but still require coordination between internal teams that rely on the API.

### Summary

| Feature | External API | Internal API |
| --- | --- | --- |
| Audience | External developers, partners, public | Internal developers, systems |
| Accessibility | Over the internet, often self-service | Within the organisation's network/private cloud |
| Purpose | Innovation, reach, revenue, partnerships | Internal integration, efficiency, standardisation |
| Security | Robust, focused on external threats | Focus on internal access control |
| Design | User-friendly, well-documented, standards | Tailored to internal needs, documentation varies |
| Support | Often requires dedicated external support | Internal support between teams |
| Evolution | Careful versioning and communication needed | More flexible, but coordination still important |

## REST vs gRPC vs GraphQL

* [REST](#rest-security)
* [gRPC](#grpc-security)
* [GraphQL](#graphql-security)

### REST security

Security considerations for REST APIs often revolve around standard web security practices:

* **Authentication:** API keys, OAuth 2.0, and JWTs are commonly used over HTTP. You'd secure the transmission of these credentials using HTTPS.
* **Authorization:** Standard HTTP methods (GET, POST, PUT, DELETE) often map to different levels of access. You'd implement authorization checks on the server-side based on the authenticated user and the resource they're trying to access.
* **Transport Security:** HTTPS is crucial for encrypting the communication between the client and the server, protecting sensitive data in transit.
* **Input Validation:** You still need to validate request parameters, headers, and the request body (often JSON or XML) to prevent injection attacks.
* **Rate Limiting:** Essential to prevent abuse and DoS attacks over HTTP.
* **CORS (Cross-Origin Resource Sharing):** If your REST API is accessed by web applications running on different domains, you'll need to configure CORS properly to control which origins are allowed to make requests.

### gRPC security

This uses HTTP/2 as its transport protocol and Protocol Buffers for message serialization. This introduces some unique security considerations:

* **Authentication:** gRPC supports various authentication mechanisms, including:
* **SSL/TLS:** For mutual authentication (both client and server verify each other's identity) and transport security.
* **Token-based authentication:** Similar to JWTs in REST, tokens can be passed in metadata.
* **Credentials plugins:** Allowing for more custom authentication strategies.
* **Authorization:** Authorization logic is typically implemented on the server-side, often based on roles or permissions associated with the authenticated user. Interceptors in gRPC can be used to enforce these checks.
* **Transport Security:** Leveraging HTTP/2 with TLS/SSL is the standard way to secure gRPC communication.
* **Input Validation:** While Protocol Buffers provide strong typing, you still need to perform business-level validation on the data received to prevent logical errors or malicious inputs.
* **Rate Limiting:** Can be implemented using gRPC interceptors or at a network level.
* **Metadata Security:** gRPC uses metadata to carry information like authentication tokens. You need to ensure this metadata is protected during transmission (via TLS) and handled securely on the server.

### GraphQL security

GraphQL is a query language for your API, giving clients more control over the data they fetch. This flexibility introduces its own set of security challenges:

* **Authentication:** Similar to REST, you'll typically use mechanisms like OAuth 2.0 or JWTs, often passed in HTTP headers. HTTPS is essential for secure transmission.
* **Authorization:** Authorization in GraphQL can be more complex due to the flexible nature of queries. You might need to implement field-level or type-level authorization to control which data clients can access.
* **Query Complexity and Depth:** Malicious or inefficiently constructed GraphQL queries can overload your server. You need to implement mechanisms to limit the complexity and depth of queries.
* **Batching and N+1 Problem:** If not handled carefully, batched queries or nested relationships can lead to the N+1 problem, potentially exposing more data than intended or causing performance issues.
* **Input Validation:** While GraphQL has a strong schema, you still need to validate the arguments provided in the queries and mutations.
* **Error Handling:** Detailed error messages in GraphQL responses can sometimes reveal sensitive information. You might want to provide more generic error messages in production.
* **Rate Limiting:** Important to prevent abuse, especially with potentially complex queries.

## CORS (Cross-Origin Resource Sharing)

Imagine you've got your lovely website, say `www.mywebsite.com`, and it wants to fetch some data from your REST API, which lives at a different address, perhaps `api.mybackend.com`. Now, by default, web browsers are a bit suspicious of this sort of cross-origin carry-on. They have a security feature called the "same-origin policy".

### The Same-Origin Policy: A Bit of Background

The same-origin policy is a fundamental security mechanism in web browsers. It basically says that a web page can only make requests to resources (like fetching data via an API) that have the same origin as the web page itself. An origin is defined by the combination of the protocol (e.g., http or https), the domain (e.g., `www.mywebsite.com`), and the port number (if specified).

So, if your website at `https://www.mywebsite.com` tries to make an AJAX request to your API at `https://api.mybackend.com`, the browser will likely block this request, even if the API is perfectly happy to serve the data. This is to prevent malicious websites from doing sneaky things like grabbing data from your bank account API without your knowledge.

### Why Do We Need CORS for REST APIs?

In many modern web applications, the front-end (your website running in the browser) is often hosted on a different domain or port than the back-end REST API. This is a common architectural pattern. Without a mechanism to explicitly allow these cross-origin requests, your web application wouldn't be able to communicate with your API! That's where CORS comes in.

### How CORS Works: The Exchange

It works through a series of HTTP headers exchanged between the browser and the server. There are two main types of CORS requests:

#### Simple Requests

These are requests that meet certain criteria (e.g., using `GET`, `HEAD`, or `POST` with specific `Content-Type` headers like `application/x-www-form-urlencoded`, `multipart/form-data`, or `text/plain`). For simple requests, the browser sends the request with an Origin header indicating the origin of the requesting page. The server then responds with CORS-related headers if it allows the request. The key header here is:

**Access-Control-Allow-Origin**: This header in the server's response specifies which origin(s) are allowed to access the resource. The server can either specify a single origin (e.g., `https://www.mywebsite.com`) or use a wildcard (`*`) to allow requests from any origin (though this should be used with caution for security reasons).

#### Preflighted Requests (for "Complex" Requests)

If a request doesn't meet the criteria for a simple request (e.g., it uses HTTP methods like `PUT` or `DELETE`, or has custom headers), the browser will first send a "preflight" request using the `OPTIONS` HTTP method to the API endpoint. This preflight request includes:

* `Origin:` The origin of the requesting page.
* `Access-Control-Request-Method:` Indicates which HTTP method the actual request will use (e.g., PUT).
* `Access-Control-Request-Headers:` Lists any custom headers the actual request will include.

The server then responds to this preflight request with headers that indicate whether the actual request is allowed:

* `Access-Control-Allow-Origin`: Again, specifies the allowed origin(s).
* `Access-Control-Allow-Methods`: Lists the allowed HTTP methods for cross-origin requests (e.g., GET, POST, PUT, DELETE).
* `Access-Control-Allow-Headers`: Lists the allowed custom headers that the client can use in the actual request.
* `Access-Control-Max-Age`: Specifies how long (in seconds) the browser should cache the preflight response. This avoids the need for a preflight request for subsequent requests within that timeframe.
* `Access-Control-Allow-Credentials`: A boolean value indicating whether the actual request can include credentials like cookies or HTTP authentication headers. If the server sends this as true, the client also needs to set withCredentials to true in its request.

#### Configuring CORS on Your REST API

To enable cross-origin requests for your REST API, you'll need to configure your server-side code to include the appropriate CORS headers in its responses. The exact way you do this will depend on the framework or language you're using (e.g., Express.js for Node.js, Django or Flask for Python, Spring for Java, etc.). Most frameworks provide middleware or configuration options to easily set these headers.

#### Important Considerations

* **Security:** Be careful when using the wildcard (*) for Access-Control-Allow-Origin, as it allows requests from any website. It's generally more secure to specify the exact origins you want to allow.
* **Credentials:** If your API uses cookies or HTTP authentication, you'll need to set Access-Control-Allow-Credentials: true on the server and ensure the client-side code also sets withCredentials: true in its requests. Be mindful of the security implications of allowing credentials across origins.
* **Preflight Requests:** Be aware that preflight requests add an extra HTTP round-trip before the actual request, which can slightly impact performance. However, they are essential for more complex cross-origin scenarios.

CORS in a nutshell for your REST API. It's all about telling the browser that it's alright for your website (on one origin) to chat with your API (on another origin) in a controlled and secure manner. Get those headers sorted properly, and your front-end and back-end will be able to communicate like the best of mates!

### Example

Imagine a scenario involving a dodgy website, let's call it `www.badactors.com`, and a legitimate online banking API at `api.mybank.com`. This banking API, unfortunately, has a bit of a blunder in its CORS configuration.

#### The Scenario

1 **The Banking API's Weakness:** The developers of api.mybank.com, in a moment of perhaps misguided convenience or a simple oversight, have configured their server to respond to all requests with the following CORS header:

```text
Access-Control-Allow-Origin: *
Access-Control-Allow-Credentials: true
```

The `Access-Control-Allow-Origin: *` part is the real kicker here. It means the API is saying, "any website out there is welcome to make requests to me!" The `Access-Control-Allow-Credentials: true` part is also significant because it means the API will accept cookies and HTTP authentication headers in cross-origin requests.

2 **The Dodgy Website's Ploy:** The folks behind `www.badactors.com` have cooked up a sneaky web page. This page contains some innocent-looking content, perhaps a quiz or a funny video, but in the background, it's silently making AJAX requests to `https://api.mybank.com` on behalf of the unsuspecting visitor.

3 **The Unsuspecting User:** Alice, a customer of "MyBank," visits `www.badactors.com`. She's logged into her online banking in another tab of her browser. Her browser, being the helpful chap it is, automatically includes her MyBank session cookies with any requests made to `api.mybank.com`.

4 **The Attack:** Because api.mybank.com has the permissive Access-Control-Allow-Origin: * and Access-Control-Allow-Credentials: true headers, the browser doesn't block the cross-origin request initiated by `www.badactors.com`. The dodgy website's JavaScript can now make authenticated requests to the banking API as if it were Alice herself.

5 **The Consequence:** The malicious script on `www.badactors.com` could now perform actions like:

* **Transferring Funds:** It could initiate a request to transfer money from Alice's account to an account controlled by the bad actors.
* **Accessing Personal Information:** It could fetch Alice's account details, transaction history, or other sensitive data exposed by the API.
* **Making Other Unauthorised Actions:** Depending on the API's functionality, the possibilities for malicious actions are quite broad.

#### Why This is a CORS Security Failure

The key failure here is the overly permissive Access-Control-Allow-Origin: * in combination with Access-Control-Allow-Credentials: true. By allowing any origin to make authenticated requests, the banking API has essentially opened the door for malicious websites to act on behalf of their users, provided those users are logged into their bank in the same browser session.

#### A Safer Approach

A much more secure approach would be for `api.mybank.com` to specify the exact origins that are allowed to access it, for example:

```text
Access-Control-Allow-Origin: https://www.mybank.com
```

If the banking API also needed to be accessed by a legitimate mobile app or another service on a different domain, they would need to explicitly list those specific origins as well. Using the wildcard with credentials enabled is a significant security risk and should generally be avoided.

So, this example illustrates how a misconfigured CORS policy can be a serious security vulnerability, allowing attackers on one domain to potentially perform actions on another domain as an authenticated user. It highlights the importance of carefully considering and correctly configuring CORS headers for your REST APIs.
