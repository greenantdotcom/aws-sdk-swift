// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
The AWS Cost and Usage Report API enables you to programmatically create, query, and delete AWS Cost and Usage report definitions. AWS Cost and Usage reports track the monthly AWS costs and usage associated with your AWS account. The report contains line items for each unique combination of AWS product, usage type, and operation that your AWS account uses. You can configure the AWS Cost and Usage report to show only the data that you want, using the AWS Cost and Usage API. Service Endpoint The AWS Cost and Usage Report API provides the following endpoint:   cur.us-east-1.amazonaws.com  
*/
public struct CostandUsageReportService {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AWSOrigamiServiceGatewayService",
            service: "cur",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-01-06",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [CostandUsageReportServiceErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Deletes the specified report.
    public func deleteReportDefinition(_ input: DeleteReportDefinitionRequest) -> Future<DeleteReportDefinitionResponse> {
        return client.send(operation: "DeleteReportDefinition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the AWS Cost and Usage reports available to this account.
    public func describeReportDefinitions(_ input: DescribeReportDefinitionsRequest) -> Future<DescribeReportDefinitionsResponse> {
        return client.send(operation: "DescribeReportDefinitions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Allows you to programatically update your report preferences.
    public func modifyReportDefinition(_ input: ModifyReportDefinitionRequest) -> Future<ModifyReportDefinitionResponse> {
        return client.send(operation: "ModifyReportDefinition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new report using the description that you provide.
    public func putReportDefinition(_ input: PutReportDefinitionRequest) -> Future<PutReportDefinitionResponse> {
        return client.send(operation: "PutReportDefinition", path: "/", httpMethod: "POST", input: input)
    }
}
