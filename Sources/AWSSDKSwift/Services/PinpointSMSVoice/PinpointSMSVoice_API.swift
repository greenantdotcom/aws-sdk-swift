// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Pinpoint SMS and Voice Messaging public facing APIs
*/
public struct PinpointSMSVoice {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "sms-voice.pinpoint",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-09-05",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [PinpointSMSVoiceErrorType.self]
        )
    }

    ///  Create a new configuration set. After you create the configuration set, you can add one or more event destinations to it.
    public func createConfigurationSet(_ input: CreateConfigurationSetRequest) throws -> Future<CreateConfigurationSetResponse> {
        return try client.send(operation: "CreateConfigurationSet", path: "/v1/sms-voice/configuration-sets", httpMethod: "POST", input: input)
    }

    ///  Create a new event destination in a configuration set.
    public func createConfigurationSetEventDestination(_ input: CreateConfigurationSetEventDestinationRequest) throws -> Future<CreateConfigurationSetEventDestinationResponse> {
        return try client.send(operation: "CreateConfigurationSetEventDestination", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing configuration set.
    public func deleteConfigurationSet(_ input: DeleteConfigurationSetRequest) throws -> Future<DeleteConfigurationSetResponse> {
        return try client.send(operation: "DeleteConfigurationSet", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an event destination in a configuration set.
    public func deleteConfigurationSetEventDestination(_ input: DeleteConfigurationSetEventDestinationRequest) throws -> Future<DeleteConfigurationSetEventDestinationResponse> {
        return try client.send(operation: "DeleteConfigurationSetEventDestination", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", httpMethod: "DELETE", input: input)
    }

    ///  Obtain information about an event destination, including the types of events it reports, the Amazon Resource Name (ARN) of the destination, and the name of the event destination.
    public func getConfigurationSetEventDestinations(_ input: GetConfigurationSetEventDestinationsRequest) throws -> Future<GetConfigurationSetEventDestinationsResponse> {
        return try client.send(operation: "GetConfigurationSetEventDestinations", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", httpMethod: "GET", input: input)
    }

    ///  List all of the configuration sets associated with your Amazon Pinpoint account in the current region.
    public func listConfigurationSets(_ input: ListConfigurationSetsRequest) throws -> Future<ListConfigurationSetsResponse> {
        return try client.send(operation: "ListConfigurationSets", path: "/v1/sms-voice/configuration-sets", httpMethod: "GET", input: input)
    }

    ///  Create a new voice message and send it to a recipient's phone number.
    public func sendVoiceMessage(_ input: SendVoiceMessageRequest) throws -> Future<SendVoiceMessageResponse> {
        return try client.send(operation: "SendVoiceMessage", path: "/v1/sms-voice/voice/message", httpMethod: "POST", input: input)
    }

    ///  Update an event destination in a configuration set. An event destination is a location that you publish information about your voice calls to. For example, you can log an event to an Amazon CloudWatch destination when a call fails.
    public func updateConfigurationSetEventDestination(_ input: UpdateConfigurationSetEventDestinationRequest) throws -> Future<UpdateConfigurationSetEventDestinationResponse> {
        return try client.send(operation: "UpdateConfigurationSetEventDestination", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", httpMethod: "PUT", input: input)
    }
}
