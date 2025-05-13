### Appendix
#### FHIR Messaging Infrastructure Implementation Considerations

This is an example demo.

The FHIR messaging infrastructure provides reliable message delivery between jurisdictions and NCHS. This section provides pseudo code that describes the behavior of jurisdiction and NVSS FHIR messaging endpoints, and discusses implementation considerations and approaches that may be useful to developers or purchasers of this infrastructure.

#### Jurisdiction FHIR Messaging Infrastructure

The following entities are referred to throughout this section:

- `[VRDR document]` a VRDR Death Record document
- `[message]` a FHIR message, one of the types described earlier in this document
- `[pending queue]` a software service used to track messages that have been sent to NCHS but not responded to
- `[message log]` a software service used to track received messages and eliminate duplicates
- `[response]` a `[message]` received from NVSS
- `[acknowledgment]` an acknowledgment message

In some places components of the above entities are referenced. E.g. `[message.header.id]` refers to the `id` component of the `header` component of `[message]`.

#### VRDR Submission

The following describes the processing performed when a jurisdiction death registration system submits a death report to the FHIR messaging infrastructure.

    Create [message] for [VRDR document]
    Add [message] to [pending queue]
    Send [message] to NVSS

Note that the `[pending queue]` should be implemented to be durable in the case of a system failure. Use of a database system would be one suitable approach.

#### Receive Message from NVSS

When a jurisdiction receives a `[response]` from NVSS it is processed as described in the following subsections. Note that the type of the `[response]` message can be determined by examining the value of the `response.header.eventUri` property.

The `[message log]` facilitates handling of duplicate messages that may result from retransmissions that may occur when an acknowledgement message is lost.

##### Acknowledgement

    Extract [acknowledgment.header.response.identifier] as [id]
    Remove [message] where [message.header.id] equals [id] from [pending queue]
    Log successful [message] delivery to [message log]

##### Extraction Error

    If [message log] does not contain [response.header.id]
      Extract [response.header.response.identifier] as [id]
      Remove [message] where [message.header.id] equals [id] from [pending queue]
      Log failed [message] delivery to [message log]
      Add [response.header.id] to [message log]
    Create [acknowedgement] for [response]
    Send [acknowledgment] to NVSS


##### Coding Response and Coding Update

    If [message log] does not contain [response.header.id]
      Extract [response.result] as [coding]
      If extraction fails
        Create [extraction error] for [response]
        Add [extraction error] to [pending queue]
        Send [extraction error] to source of [response]
      Else
        Extract [response.timestamp] as [timestamp]
        Deliver [coding], [timestamp] to local death registration system
        Add [response.header.id] to [message log]
    Create [acknowledgement] for [response]
    Send [acknowledgement] to NVSS

#### Process Pending Queue

The pending queue contains messages that are not yet known to have been successfully sent to NVSS, these messages should be periodically resent until acknowledged or an extraction error is received.

    Periodically
      For each [message] in [pending queue]
        If [message.timeout] > current time
          Resend [message] to NVSS
          Update [message.timeout]

It is recommended that message timeouts follow an "exponential backoff" approach where the time between retries is increased for each retry of a given message. This approach prevents retries from overloading the receiver in the case of transient outages.

#### Required Implementation Resources

Implementing the FHIR messaging infrastructure at a jurisdiction requires the following components:

1. Software for creating VRDR documents
2. Software for creating the following types of messages: Death Record Submission, Death Record Update, Death Record Void, and Acknowledgement
3. Software for parsing the following types of messages: Coding Response, Extraction Error Response, Coding Error Response, and Acknowledgement
4. Software to implement message transport and the message processing algorithms shown above
5. Persistent logging infrastructure for the `[message log]` component. This is used to record:
   a. Received messages (for duplication elimination and audit purposes)
   b. Successfully delivered messages (for audit purposes)
   c. Unsuccessfully delivered messages (for audit purposes)
6. Persistent queue infrastructure for the `[pending queue]` component

Items 1, 2, 3 above are within the scope of the [vrdr-dotnet open source project](https://github.com/nightingaleproject/vrdr-dotnet), an implementation of the FHIR messaging infrastructure at a jurisdiction could leverage this project to accelerate development.

Items 5 and 6 both require persistent storage and a transactional, durable implementation such as a database management system. This will ensure that the message processing algorithms implemented as part of item 4 are able to function in parallel and that the system will recover without undue message retransmissions should a system failure occur.

### NCHS FHIR Messaging Infrastructure

#### VRDR Death Report Submission

The following pseudo code outlines the processing steps taken by NVSS on receipt of a VRDR Death Report Submission message

    Extract [death_record] from [message]
    If extraction fails
      Create [extraction error] for [message]
      Add [extraction error] to [pending queue]
      Send [extraction error] to source of [message]
    Else
      Create [acknowledgment] for [message]
      Send [acknowledgment] to source of [message]
      If [message log] does not include [message.header.id]
        Add [message] to [message log]
        Submit [death_record] for coding

#### VRDR Death Report Update

The following pseudo code outlines the processing steps taken by NVSS on receipt of a VRDR Death Report Update message

    Extract [death_record] from [message]
    If extraction fails
      Create [extraction error] for [message]
      Add [extraction error] to [pending queue]
      Send [extraction error] to source of [message]
    Else
      Create [acknowledgment] for [message]
      Send [acknowledgment] to source of [message]
      If [message log] includes [message.header.id]
        Ignore duplicate
      Else if [message log] does not include [death_record.cert_id, death_record.state_id]
        Log receipt of update with no preceding submission
        Add [message] to [message log]
        Submit [death_record] for coding
      Else if [message log].latest_timestamp for [death_record.cert_id, death_record.state_id] > [message.timestamp]
        Log receipt of update older than previously received update or submission
      Else
        Add [message] to [message log]
        Submit [death_record] for coding

#### Coding Response or Coding Update

The following describes the processing performed when NVSS submits a coding response or update to the FHIR messaging infrastructure.

    Create [message] for [Coding]
    Add [message] to [pending queue]
    Send [message] to jurisdiction

Note that the `[pending queue]` should be implemented to be durable in the case of a system failure. Use of a database system would be one suitable approach.

#### Acknowledgement

The following describes the processing performed when NVSS receives an acknowledgement to a Coding Response or Coding Update message.

    Extract [acknowledgment.header.response.identifier] as [id]
    Remove [message] where [message.header.id] equals [id] from [pending queue]
    Log successful [message] delivery to [message log]

#### Process Pending Queue

The pending queue contains messages that are not yet known to have been successfully sent to jurisdictions, these messages should be periodically resent until acknowledged

    Periodically
      For each [message] in [pending queue]
        If [message.timeout] > current time
          Resend [message] to jurisdiction
          Update [message.timeout]

It is recommended that message timeouts follow an "exponential backoff" approach where the time between retries is increased for each retry of a given message. This approach prevents retries from overloading the receiver in the case of transient outages.