# RESTFul Interfaces

REST (REpresentational State Transfer) is a **pattern** of communication over a networking protocol known as HTTP. NOTE: the term **pattern**. REST is **not** a protocol like a convention for organising communications around a Uniform Resource Identifier (URI).

## Principles

The URIs identify resources as a basis for communication between two computers. In other words, one computer -- i.e. the client -- communicates with the other -- i.e. the server -- on resources. REST group resources by nouns, not verbs, for example:

* like this - `http://localhost:8080/products`;
* but not like this - `http://localhost:8080/getproducts`.

Here are the key aspects that underpin this principle:

* **Hierarchy and Relationships:** The path structure should reflect the relationships between resources. If a resource is a sub-resource of another, you can indicate this in the path. For instance, if you want to get the orders for a specific customer, a sensible path would be /customers/{customerId}/orders. This clearly shows that orders belong to a particular customer.

* **Consistency is Key:** Stick to a consistent pattern throughout your API. If you use plural nouns for top-level resources, keep doing so. If you use hyphens or underscores for separating words in paths (though hyphens are generally preferred), be consistent with that as well. This makes your API much easier to understand and use.

* **Keep it Concise:** While clarity is crucial, you don't want your paths to be overly verbose. Aim for brevity while still being descriptive. Avoid unnecessary words or jargon.

* **Use Path Parameters for Identification:** When you need to identify a specific instance of a resource, use path parameters. These are typically enclosed in curly braces, like {customerId} in our earlier example. This keeps the base path clean and allows you to target individual items.

* **Filtering and Sorting with Query Parameters:** For actions like filtering, sorting, or pagination, use query parameters (the bits after the ? in a URL). For example, /products?category=books&sort=price:desc. This keeps the path focused on the resource itself and uses parameters for optional modifications.

* **HTTP Methods for Actions:** Remember that the HTTP method (GET, POST, PUT, DELETE, etc.) indicates the action you're performing on the resource identified by the path. The path itself should primarily focus on what you're interacting with, not how.

## Naming Convention

Use plural nouns for the main resource collections in your API paths.

Reasons:

* **Consistency:** It provides a consistent pattern for accessing collections of resources.
* **Intuitiveness:** It often feels more natural to speak of "customers" as a general group than "customer" when referring to the endpoint that manages them.
* **Avoids Confusion:** Using singular nouns for the main endpoint could potentially lead to ambiguity when trying to represent the entire collection versus a single item.

> Use singular nouns, particularly if the resource inherently represents a single, unique entity in the system or if there's a strong conceptual reason for it. Otherwise use pural nouns.

Sub resources naming convention:

```text
GET /articles/{article_id}/comments/{comment_id}
```

Use query parameters to filter by attributes:

```text
GET /products/?color={color}
```

Why query parameters are generally preferred for filtering and sorting:

* **Keeps Paths Focused on Resources**: The path clearly identifies the main resource you're interacting with (/products).
* **Flexibility in Filtering**: You can easily add more filtering criteria (e.g., size, price) by adding more query parameters (/products?colour=red&size=large&price_lt=50).
* **Standard Practice**: This is a widely accepted and understood pattern in REST API design.

## HTTP Requests Methods And Actions

The interactions between clients and servers use HTTP Request and Response. A request includes these HTTP verbs `POST`, `GET`, `PUT` and `DELETE` to the server to perform the following operations `CREATE`,  `READ`, `UPDATE` and `DELETE` specific resources respectively. Here is an example of a call with verbs:

```text
 [client] ----  POST /products HTTP ---> [server] ====> [products data store] 
```

An HTTP request may also include a body in JSON format representing the request expected of the resource.

HTTP methods and the actions they should correspond to:

### GET method

This method is for retrieving or reading a resource or a collection of resources. It should be a safe and idempotent operation, meaning it should not have any side effects on the server, and making the same GET request multiple times should yield the same result. Think of it as asking for information.

Corresponds to: Reading, retrieving, fetching data.
Example: GET /customers (get all customers), GET /products/{productId} (get a specific product).

### POST method

This method is primarily used to create a new resource. It's not idempotent, meaning sending the same POST request multiple times might result in multiple resources being created.

Corresponds to: Creating, adding new data, submitting data to be processed.
Example: POST /orders (create a new order), POST /articles/{articleId}/comments (add a new comment to an article).

### PUT method

This method is used to update an existing resource. It's intended to replace the entire resource at the given URI with the data provided in the request. It should ideally be idempotent – making the same PUT request multiple times should result in the same final state of the resource.

Corresponds to: Updating, replacing an entire resource.
Example: PUT /customers/{customerId} (update all details of a specific customer).

### PATCH method

This method is also used to update an existing resource, but unlike PUT, it's intended to apply partial modifications. You only send the data that needs to be changed, without affecting the other attributes of the resource. It's not strictly required to be idempotent, although it's good practice if it is.

Corresponds to: Partially updating a resource.
Example: PATCH /products/{productId} (update only the price of a specific product).

### DELETE method

This method is used to remove or delete a resource identified by its URI. It should ideally be idempotent – making the same DELETE request multiple times after the first successful deletion should result in the resource still being absent (a 204 No Content response is common).

Corresponds to: Removing, deleting a resource.
Example: DELETE /orders/{orderId} (delete a specific order).

### HEAD method

This method is essentially the same as a GET request, but the server must not return a message body in the response. The response will contain the HTTP headers that would have been returned if a GET request for the same resource had been made.

Use Cases:

* **Checking Resource Existence:** You can use HEAD to quickly determine if a resource exists at a particular URL without having to download the entire content. A 200 OK status code usually indicates that the resource exists. A 404 Not Found would mean it doesn't.
* **Retrieving Metadata:** HEAD allows you to inspect the headers of a resource, such as Content-Type, Content-Length, Last-Modified, ETag, etc., without transferring the actual data. This can be useful for:
  * Checking if a resource has been modified (using Last-Modified or ETag headers) before making a potentially large GET request.
  * Determining the content type before processing the resource.
  * Estimating the size of the resource before downloading it.

Example Scenario:

Let's say you have an image resource at `/images/large_image.jpg`.

`HEAD /images/large_image.jpg`

A possible response from the server might look like this:

```text
HTTP/1.1 200 OK
Content-Type: image/jpeg
Content-Length: 2567890
Last-Modified: Tue, 15 May 2025 10:00:00 GMT
ETag: "a1b2c3d4e5f6"
Server: Apache/2.4.57 (Unix)
From this response, the client can see that the image exists (200 OK), its content type is JPEG, its size is approximately 2.5MB, when it was last modified, and its entity tag. The client didn't have to download the entire image to get this information.
```

### OPTIONS Method

The OPTIONS method is used to describe the communication options for the target resource. It allows a client to discover the HTTP methods and other options supported by the server for a given URL. The server should respond with the allowed methods in the Allow header. The response body might also contain more detailed information about the available options.

Use Cases:

* **Discovering Allowed Methods:** Clients can use OPTIONS to find out which HTTP methods (e.g., GET, POST, PUT, DELETE) are supported for a specific endpoint. This is particularly useful for dynamic APIs or when a client doesn't have prior knowledge of the API.
* **CORS Preflight Requests:** In the context of Cross-Origin Resource Sharing (CORS), browsers automatically issue an OPTIONS request (known as a "preflight request") before making certain types of cross-origin requests (like POST, PUT, DELETE, or GET with certain headers). This allows the server to indicate which origins, methods, and headers are allowed for cross-origin requests.

Example Scenario:

Let's say a client wants to know what actions are possible on the /products endpoint.

`OPTIONS /products`

A possible response from the server might include the following headers:

```text
HTTP/1.1 200 OK
Allow: GET, POST, HEAD, OPTIONS
Content-Length: 0
Content-Type: text/plain
```

The `Allow` header indicates that the /products endpoint supports the `GET`, `POST`, `HEAD`, and `OPTIONS` methods. The server might also provide a body with more details, although in this simple case, it's empty (`Content-Length: 0`).

Another example, specifically for a CORS preflight request to `/api/data`:

```text
OPTIONS /api/data
Origin: http://example.com
Access-Control-Request-Method: POST
Access-Control-Request-Headers: Content-Type, Authorization
```

The server might respond with headers like:

```text
HTTP/1.1 204 No Content
Access-Control-Allow-Origin: http://example.com
Access-Control-Allow-Methods: POST, GET, OPTIONS
Access-Control-Allow-Headers: Content-Type, Authorization
Access-Control-Max-Age: 86400
```

This response tells the browser that cross-origin `POST` and `GET` requests from `http://example.com` with the `Content-Type` and `Authorization` headers are allowed for the `/api/data` endpoint.

`HEAD` is about retrieving metadata without the body and checking existence, `OPTIONS` is about discovering the capabilities and allowed methods for a specific API endpoint. They both contribute to making APIs more discoverable and efficient.

## Response Conventions

These are the typical conventions.

* Design principles for responses
  * **Be Consistent:** Use the same data formats and error structures throughout your API.
  * **Be Clear:** Ensure that your status codes, headers, and response bodies are informative and easy to understand.
  * **Follow Standards:** Adhere to the established conventions of the HTTP protocol.
  * **Provide Useful Error Messages:** When things go wrong, give the client enough information to understand what happened and how they might be able to fix it (without exposing sensitive server details).

### Status codes

The HTTP status code is the first and most important piece of information in a response. It concisely communicates the result of the client's request. You should aim to use the standard HTTP status codes as accurately as possible. Here are some common ones:

* **2xx Success:** Indicate that the client's request was successful.
  * **200 OK:** The standard response for successful HTTP requests. The actual response will depend on the method used. For a GET request, it will contain the requested resource.
  * **201 Created:** The request has been fulfilled, and a new resource has been created as a result. This is commonly used after a successful POST request. The response should include details of the new resource, often in the body and with a Location header pointing to the new resource's URI.
  * **204 No Content:** The server has successfully processed the request, but there is no content to return in the response body. This is often used for successful DELETE or PUT requests where no further information needs to be sent back.
* **3xx Redirection:** Indicate that the client needs to take further action to complete the request.
  * **301 Moved Permanently:** The requested resource has been permanently moved to a new URI, which is given by the Location header. Clients should update their bookmarks and future requests should use the new URI.
  * **302 Found (or 307 Temporary Redirect):** The requested resource resides temporarily under a different URI, as given by the Location header. The client should continue to use the original URI for future requests. 307 is preferred over 302 as it preserves the request method.
  * **304 Not Modified:** Used in response to a conditional GET request (using If-Modified-Since or If-None-Match headers) to tell the client that the resource has not been modified since the last time it was requested. The client can use its cached version.
* **4xx Client Error:** Indicate that the client's request could not be completed due to an error on the client's side.
  * **400 Bad Request:** The server could not understand the request due to invalid syntax or other client-side errors. The response body often contains details about the error.
  * **401 Unauthorized:** The client must authenticate themselves to get the requested resource. The response should include a WWW-Authenticate header indicating the authentication scheme.
  * **403 Forbidden:** The server understood the request, but refuses to authorize it. Unlike 401, re-authenticating will not make a difference.
  * **404 Not Found:** The server has not found anything matching the Request-URI. This is a very common error.
  * **405 Method Not Allowed:** The method specified in the request is not allowed for the resource identified by the Request-URI. The Allow header should specify the allowed methods.
  * **409 Conflict:** The request could not be completed due to a conflict with the current state of the resource (e.g., trying to delete a resource that has dependencies).
  * **422 Unprocessable Entity:** The server understands the request entity, but was unable to process the contained instructions (e.g., validation errors in the request body).
* **5xx Server Error:** Indicate that the server encountered an error while trying to fulfill the request.
  * **500 Internal Server Error:** A generic error message indicating that something unexpected happened on the server. Specific error details should ideally be logged on the server and not exposed to the client in production.
  * **503 Service Unavailable:** The server is currently unavailable (e.g., due to overload or maintenance). The response might include a Retry-After header indicating how long the client should wait before making another request.

### Response Body

The format of the response body should be consistent and usually aligns with the Content-Type header. Common formats include:

* **JSON (application/json):** The most widely used format for REST APIs due to its simplicity and ease of parsing in JavaScript and other languages.
* **XML (application/xml or text/xml):** Still used in some legacy systems but less common for modern APIs.

The body should contain the requested resource(s) for successful GET requests, details of the newly created resource for POST requests (often along with the Location header), and error details for unsuccessful requests.

For error responses, it's good practice to provide a consistent and structured error format, including an error code, a human-readable message, and potentially more detailed information for debugging.

### Headers

Response headers provide additional information about the response. Some common headers include:

* `Content-Type`: Specifies the media type of the response body (e.g., `application/json`, `application/xml`).
* `Content-Length`: Indicates the size of the response body in bytes.
* `Location`: Used in 201 Created responses to specify the URI of the newly created resource, and in 3xx redirects to specify the target URI.
* `Last-Modified`: Indicates the date and time at which the resource was last modified. Used for caching.
* `ETag`: An entity tag, which is an identifier for a specific version of a resource. Used for efficient caching and conditional requests.
* `Cache-Control`: Specifies directives for caching mechanisms in both requests and responses.
* `Allow`: In response to an `OPTIONS` request or a 405 Method Not Allowed error, it lists the HTTP methods supported by the resource.
* `WWW-Authenticate`: Sent in response to `401 Unauthorized` requests, it indicates the authentication scheme that the client should use.
* `Retry-After`: Might be sent with `503 Service Unavailable` or `429 Too Many Requests` responses to indicate how long the client should wait before retrying.

#### Content type

* `application`: This is used for binary data or data that doesn't fit into the other major categories.
  * `application/json`: JavaScript Object Notation. The de facto standard for data exchange in modern web APIs.
  * `application/xml`: Extensible Markup Language. Still used, particularly in older systems or for document-centric data.
  * `application/octet-stream`: Generic binary data. The browser usually doesn't know how to handle this and will typically prompt the user to save it.
  * `application/pdf`: Adobe Portable Document Format.
  * `application/zip`: ZIP archive format.
  * `application/gzip`: GNU Gzip compressed archive.
  * `application/x-www-form-urlencoded`: Used for submitting HTML forms via the POST method when the data needs to be sent as key-value pairs in the request body.
  * `application/vnd.api+json`: The official MIME type for the JSON API specification.
  * `application/vnd.ms-excel`: Microsoft Excel spreadsheet.
  * `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`: Modern Microsoft Excel spreadsheet (OOXML).
* `audio`: Used for audio data.
  * `audio/mpeg`: MP3 audio.
  * `audio/ogg`: Ogg Vorbis audio.
  * `audio/wav`: Waveform Audio File Format.
* `image`: Used for image data.
  * `image/jpeg`: JPEG image.
  * `image/png`: Portable Network Graphics.
  * `image/gif`: Graphics Interchange Format.
  * `image/svg+xml`: Scalable Vector Graphics (XML-based).
  * `image/webp`: WebP image format.
* `text`: Used for text-based data that is human-readable.
  * `text/plain`: Plain text.
  * `text/html`: HyperText Markup Language.
  * `text/css`: Cascading Style Sheets.
  * `text/javascript (or the more modern application/javascript)`: JavaScript code.
  * `text/csv`: Comma-Separated Values.
* `video`: Used for video data.
  * `video/mpeg`: MPEG video.
  * `video/mp4`: MP4 video.
  * `video/ogg`: Ogg Theora video.
  * `video/webm`: WebM video format.
* multipart: Used for composite data, often for forms with file uploads or for sending multiple parts in a single message.
  * `multipart/form-data`: Used for HTML forms that contain files or other non-text data. Each part of the form is sent as a separate body part with its own Content-Type.
  * `multipart/related`: Used for sending a resource that consists of multiple related parts, often with a root part and embedded resources (e.g., an HTML document with embedded images).

Key considerations:

In the context of REST APIs, the `Content-Type` header in a request tells the server what kind of data the client is sending (e.g., `application/json` when sending a JSON payload). The `Content-Type` header in a response tells the client (e.g., a web browser or another API consumer) how to interpret the data in the response body (e.g., `application/json` means it should be parsed as JSON).

Using the correct MIME types is essential for ensuring that data is correctly processed and rendered by the receiving application. If you send JSON data but tell the client it's `text/plain`, it won't be interpreted correctly.

You'll often see the `Accept` header in a request as well. This header tells the server which MIME types the client is willing to accept in the response. The server should then try to respond with one of these types, if possible.

So, MIME content types are the unsung heroes that ensure smooth communication and data exchange across the web and within your REST APIs. They provide the necessary context for handling different kinds of digital information.

#### ETags header attributes

Purpose of ETags:

* Efficient Caching (Cache Validation): ETags allow clients (like web browsers) to make conditional requests, saving bandwidth and improving performance. Here's how:
  * When a client first requests a resource, the server sends the resource along with an ETag header in the response.
  * The client can then cache the resource and its associated ETag.
  * When the client needs to request the same resource again, it can include an If-None-Match header in its request, containing the ETag it previously received.
  * The server then compares the ETag in the If-None-Match header with the current ETag of the resource on the server:
    * If the ETags match, the server knows the client's cached version is still up-to-date and sends a 304 Not Modified response without the resource body. The client can then use its cached copy.
    * If the ETags don't match, the server sends a full 200 OK response with the updated resource and a new ETag.
* Optimistic Concurrency Control: ETags can also help prevent "lost updates" when multiple clients are editing the same resource. Here's how:
  * When a client retrieves a resource for editing, the server sends its ETag.
  * Before the client sends back its updated version (using PUT or PATCH), it can include the original ETag in an If-Match header in its request.
  * The server then checks if the ETag in the If-Match header matches the current ETag of the resource on the server:
    * If they match, it means the resource hasn't been changed by someone else since the client retrieved it, and the update can proceed. The server should then generate a new ETag for the updated resource.
    * If they don't match, it means the resource has been modified by another client in the meantime, and the server can return a 412 Precondition Failed error, preventing the first client's changes from overwriting the other's.

How ETags are Generated:

The HTTP specification doesn't mandate a specific way for servers to generate ETags. Common methods include:

* **Hashing the content:** Creating a hash (like MD5 or SHA-1) of the resource's content. Even a small change in content will result in a different hash.
* **Using the last modification timestamp:** Basing the ETag on the resource's last modified date and time.
* **Version numbers:** If the resource is versioned, the ETag could be a version identifier.

Strong vs. Weak ETags:

* ETags can be either "strong" or "weak".
  * **Strong ETags:** Indicate that the resource representations are byte-for-byte identical. They are used by default. A strong ETag match guarantees that the content is exactly the same.
  * **Weak ETags:** Indicated by a W/ prefix (e.g., W/"v1.0"), they suggest that the resource representations are semantically equivalent but not necessarily byte-for-byte identical. Weak ETags are easier for servers to generate but offer less strict validation (e.g., minor changes in metadata might not change a weak ETag).

In summary, an ETag is a valuable HTTP header for improving the efficiency of web caching and for implementing optimistic concurrency control in REST APIs. It allows clients to verify if their cached resources are still current and helps prevent conflicting updates to resources.

## HTTP Interactions

* [HTTP Interaction with Accept](#http-interaction-with-accept)

### HTTP interaction with Accept

HTTP Request from Client:

```text
GET /api/books
Host: api.example.com
Accept: application/json;v=2.0;q=0.9, application/vnd.example.booklist+json;q=1.0, application/xml;q=0.5
```

In this request:

* The client is asking for the /api/books resource using the GET method.
* It's telling the server (api.example.com) that it prefers the vendor-specific JSON format for a list of books (application/vnd.example.booklist+json) with the highest preference (q=1.0).
* It's also willing to accept standard JSON (application/json), specifically version 2.0 (v=2.0), with a slightly lower preference (q=0.9).
* As a less preferred option, it can also handle XML (application/xml) with a preference of 0.5.

#### HTTP Response from Server (Scenario 1: Server provides the preferred vendor-specific JSON)

```text
HTTP/1.1 200 OK
Content-Type: application/vnd.example.booklist+json; charset=utf-8
Content-Length: 450
ETag: "W/\"abcdef123\""
// ... other response headers

[
  {
    "id": "1",
    "title": "The Great Novel",
    "author": "A. Famous Author"
  },
  {
    "id": "2",
    "title": "Another Good Read",
    "author": "B. Well-Known Writer"
  }
]
```

In this response:

* The server responds with a `200 OK` status, indicating success.
* The `Content-Type` header is `application/vnd.example.booklist+json; charset=utf-8`. This tells the client that the response body is in the vendor-specific JSON format for a book list, and the character encoding is UTF-8. Notice the ; `charset=utf-8` attribute within the Content-Type header, providing more detail about the content.
* The `Content-Length` indicates the size of the response body.
* The `ETag` provides a version identifier for the resource.
* The body contains the actual list of books in JSON format.

#### HTTP Response from Server (Scenario 2: Server provides standard JSON)

If the server couldn't provide the vendor-specific JSON format, but could provide standard JSON version 2.0, the response might look like this:

```text
HTTP/1.1 200 OK
Content-Type: application/json;v=2.0; charset=utf-8
Content-Length: 420
ETag: "W/\"ghijkl456\""
// ... other response headers

[
  {
    "bookId": "1",
    "bookName": "The Great Novel",
    "bookAuthor": "A. Famous Author"
  },
  {
    "bookId": "2",
    "bookName": "Another Good Read",
    "bookAuthor": "B. Well-Known Writer"
  }
]
```

Here, the `Content-Type` indicates `application/json` and specifies the version `v=2.0` as requested in the `Accept` header, along with the `charset`. The structure of the JSON body might be slightly different from the vendor-specific format.

#### HTTP Response from Server (Scenario 3: Server provides XML)

If the server couldn't provide JSON in either format, but could provide XML, the response might be:

```text
HTTP/1.1 200 OK
Content-Type: application/xml; charset=utf-8
Content-Length: 580
ETag: "W/\"mnopqr789\""
// ... other response headers

<books>
  <book>
    <id>1</id>
    <title>The Great Novel</title>
    <author>A. Famous Author</author>
  </book>
  <book>
    <id>2</id>
    <title>Another Good Read</title>
    <author>B. Well-Known Writer</author>
  </book>
</books>
```

In this case, the `Content-Type` is `application/xml` with the `charset` specified, and the response body contains the book data in XML format.

These examples clearly show how the `Accept` header in the request guides the server's choice of `Content-Type` in the response, and how attributes like `charset` and `v` are part of the `Content-Type` header to provide specific details about the format of the response body. The `Accept` header focuses on the types the client can handle and their preferences.

## Activity Based REST API

Here are some of the scenarios that may be appropriate.

### Long-Running Operations

When dealing with operations that take a significant amount of time to complete (e.g., complex data processing, batch jobs, asynchronous tasks), the immediate response to a POST request might not be the final state of a resource. In such cases, you might have an endpoint that triggers the operation, and the response provides a way to track its progress. This tracking mechanism could involve an activity-based path.

**Example:** Instead of `POST /reports`, you might have `POST /generateReport` which returns a resource representing the report generation task, perhaps accessible via `/reportGenerationStatus/{taskId}`. Here, `generateReport` is verb-like, but the subsequent interaction is still resource-based.

### Operations Without Clear Resource Mapping

Sometimes, you might have actions in your system that don't directly map to a single, easily identifiable resource. These could be more procedural or involve multiple resources in a way that doesn't fit neatly into standard CRUD operations on a single resource.

**Example (Potentially Activity-Based):** An endpoint like /transferFunds that takes parameters for source account, destination account, and amount. While "funds transfer" could be considered an activity, you might argue that it acts upon "accounts" resources. A more RESTful approach might involve actions on an "transactions" sub-resource of accounts.

### Integration with Legacy Systems

If you're building an API as a facade over an existing, non-RESTful system, you might find yourself having to expose endpoints that mirror the actions or procedures of that legacy system. This can sometimes lead to more verb-oriented paths. However, the goal should still be to try and abstract these actions into resource-based interactions as much as possible.

### Specific Domain Language or Concepts

In certain highly specialized domains, the natural language and core concepts might be more verb-driven. Trying to force everything into a strict noun-based structure might feel unnatural or less clear to domain experts.

**Example (Hypothetical):** In a specific scientific domain, an operation like /analyzeSpectrum might be more readily understood than trying to shoehorn it into actions on a "spectrum analysis" resource.
Important Considerations and Caveats:

* **Maintain Resource Focus Where Possible:** Even in these situations, try to identify the underlying resources being affected or managed by the activity. Can you frame the interaction in terms of creating, updating, or retrieving resources related to the activity?
* **Use HTTP Methods Meaningfully:** Even if the path contains a verb-like segment, ensure you're still using the HTTP methods according to their intended semantics (e.g., POST to initiate an action).
* **Consistency is Still Key:** If you do opt for some activity-based endpoints, be consistent within that specific area of your API.
* **Consider the Long-Term Impact:** Think about how your API will evolve and whether an activity-based approach will make it harder to understand and maintain in the future. Resource-based APIs tend to be more scalable and easier to reason about over time.

> In summary, while the strong recommendation is to design resource-based REST APIs with noun-based paths, there might be justifiable exceptions, particularly when dealing with long-running operations, actions without clear resource mappings, legacy system integration, or very specific domain language. However, these exceptions should be carefully considered, well-documented, and used sparingly to avoid undermining the benefits of a RESTful design.

## References

* [Architectural Styles and the Design of Network-based Software Architectures - Roy Fielding Dissertation](https://ics.uci.edu/~fielding/pubs/dissertation/top.htm)
* [What Is REST API? Examples And How To Use It: Crash Course System Design #3](https://www.youtube.com/watch?v=-mN3VyJuCjM)
