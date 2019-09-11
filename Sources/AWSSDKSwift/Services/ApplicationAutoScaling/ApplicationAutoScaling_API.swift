// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
With Application Auto Scaling, you can configure automatic scaling for your scalable resources. You can use Application Auto Scaling to accomplish the following tasks:   Define scaling policies to automatically scale your AWS or custom resources   Scale your resources in response to CloudWatch alarms   Schedule one-time or recurring scaling actions   View the history of your scaling events   Application Auto Scaling can scale the following resources:   Amazon ECS services. For more information, see Service Auto Scaling in the Amazon Elastic Container Service Developer Guide.   Amazon EC2 Spot fleets. For more information, see Automatic Scaling for Spot Fleet in the Amazon EC2 User Guide.   Amazon EMR clusters. For more information, see Using Automatic Scaling in Amazon EMR in the Amazon EMR Management Guide.   AppStream 2.0 fleets. For more information, see Fleet Auto Scaling for Amazon AppStream 2.0 in the Amazon AppStream 2.0 Developer Guide.   Provisioned read and write capacity for Amazon DynamoDB tables and global secondary indexes. For more information, see Managing Throughput Capacity Automatically with DynamoDB Auto Scaling in the Amazon DynamoDB Developer Guide.   Amazon Aurora Replicas. For more information, see Using Amazon Aurora Auto Scaling with Aurora Replicas.   Amazon SageMaker endpoint variants. For more information, see Automatically Scaling Amazon SageMaker Models.   Custom resources provided by your own applications or services. More information is available in our GitHub repository.    To learn more about Application Auto Scaling, including information about granting IAM users required permissions for Application Auto Scaling actions, see the Application Auto Scaling User Guide.
*/
public struct ApplicationAutoScaling {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AnyScaleFrontendService",
            service: "autoscaling",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-02-06",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ApplicationAutoScalingErrorType.self]
        )
    }

    ///  Deletes the specified Application Auto Scaling scaling policy. Deleting a policy deletes the underlying alarm action, but does not delete the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated action. To create a scaling policy or update an existing one, see PutScalingPolicy.
    public func deleteScalingPolicy(_ input: DeleteScalingPolicyRequest) throws -> Future<DeleteScalingPolicyResponse> {
        return try client.send(operation: "DeleteScalingPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified Application Auto Scaling scheduled action.
    public func deleteScheduledAction(_ input: DeleteScheduledActionRequest) throws -> Future<DeleteScheduledActionResponse> {
        return try client.send(operation: "DeleteScheduledAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deregisters a scalable target. Deregistering a scalable target deletes the scaling policies that are associated with it. To create a scalable target or update an existing one, see RegisterScalableTarget. 
    public func deregisterScalableTarget(_ input: DeregisterScalableTargetRequest) throws -> Future<DeregisterScalableTargetResponse> {
        return try client.send(operation: "DeregisterScalableTarget", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about the scalable targets in the specified namespace. You can filter the results using the ResourceIds and ScalableDimension parameters. To create a scalable target or update an existing one, see RegisterScalableTarget. If you are no longer using a scalable target, you can deregister it using DeregisterScalableTarget.
    public func describeScalableTargets(_ input: DescribeScalableTargetsRequest) throws -> Future<DescribeScalableTargetsResponse> {
        return try client.send(operation: "DescribeScalableTargets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks. You can filter the results using the ResourceId and ScalableDimension parameters. Scaling activities are triggered by CloudWatch alarms that are associated with scaling policies. To view the scaling policies for a service namespace, see DescribeScalingPolicies. To create a scaling policy or update an existing one, see PutScalingPolicy.
    public func describeScalingActivities(_ input: DescribeScalingActivitiesRequest) throws -> Future<DescribeScalingActivitiesResponse> {
        return try client.send(operation: "DescribeScalingActivities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the scaling policies for the specified service namespace. You can filter the results using the ResourceId, ScalableDimension, and PolicyNames parameters. To create a scaling policy or update an existing one, see PutScalingPolicy. If you are no longer using a scaling policy, you can delete it using DeleteScalingPolicy.
    public func describeScalingPolicies(_ input: DescribeScalingPoliciesRequest) throws -> Future<DescribeScalingPoliciesResponse> {
        return try client.send(operation: "DescribeScalingPolicies", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the scheduled actions for the specified service namespace. You can filter the results using the ResourceId, ScalableDimension, and ScheduledActionNames parameters. To create a scheduled action or update an existing one, see PutScheduledAction. If you are no longer using a scheduled action, you can delete it using DeleteScheduledAction.
    public func describeScheduledActions(_ input: DescribeScheduledActionsRequest) throws -> Future<DescribeScheduledActionsResponse> {
        return try client.send(operation: "DescribeScheduledActions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a policy for an Application Auto Scaling scalable target. Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scaling policy applies to the scalable target identified by those three attributes. You cannot create a scaling policy until you have registered the resource as a scalable target using RegisterScalableTarget. To update a policy, specify its policy name and the parameters that you want to change. Any parameters that you don't specify are not changed by this update request. You can view the scaling policies for a service namespace using DescribeScalingPolicies. If you are no longer using a scaling policy, you can delete it using DeleteScalingPolicy. Multiple scaling policies can be in force at the same time for the same scalable target. You can have one or more target tracking scaling policies, one or more step scaling policies, or both. However, there is a chance that multiple policies could conflict, instructing the scalable target to scale out or in at the same time. Application Auto Scaling gives precedence to the policy that provides the largest capacity for both scale in and scale out. For example, if one policy increases capacity by 3, another policy increases capacity by 200 percent, and the current capacity is 10, Application Auto Scaling uses the policy with the highest calculated capacity (200% of 10 = 20) and scales out to 30.  Learn more about how to work with scaling policies in the Application Auto Scaling User Guide.
    public func putScalingPolicy(_ input: PutScalingPolicyRequest) throws -> Future<PutScalingPolicyResponse> {
        return try client.send(operation: "PutScalingPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a scheduled action for an Application Auto Scaling scalable target. Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scheduled action applies to the scalable target identified by those three attributes. You cannot create a scheduled action until you have registered the resource as a scalable target using RegisterScalableTarget.  To update an action, specify its name and the parameters that you want to change. If you don't specify start and end times, the old values are deleted. Any other parameters that you don't specify are not changed by this update request. You can view the scheduled actions using DescribeScheduledActions. If you are no longer using a scheduled action, you can delete it using DeleteScheduledAction. Learn more about how to work with scheduled actions in the Application Auto Scaling User Guide.
    public func putScheduledAction(_ input: PutScheduledActionRequest) throws -> Future<PutScheduledActionResponse> {
        return try client.send(operation: "PutScheduledAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers or updates a scalable target. A scalable target is a resource that Application Auto Scaling can scale out and scale in. Each scalable target has a resource ID, scalable dimension, and namespace, as well as values for minimum and maximum capacity.  After you register a scalable target, you do not need to register it again to use other Application Auto Scaling operations. To see which resources have been registered, use DescribeScalableTargets. You can also view the scaling policies for a service namespace using DescribeScalableTargets.  If you no longer need a scalable target, you can deregister it using DeregisterScalableTarget.
    public func registerScalableTarget(_ input: RegisterScalableTargetRequest) throws -> Future<RegisterScalableTargetResponse> {
        return try client.send(operation: "RegisterScalableTarget", path: "/", httpMethod: "POST", input: input)
    }
}
