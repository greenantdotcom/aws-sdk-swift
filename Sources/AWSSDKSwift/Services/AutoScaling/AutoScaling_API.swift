// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon EC2 Auto Scaling Amazon EC2 Auto Scaling is designed to automatically launch or terminate EC2 instances based on user-defined policies, schedules, and health checks. Use this service with AWS Auto Scaling, Amazon CloudWatch, and Elastic Load Balancing. For more information, including information about granting IAM users required permissions for Amazon EC2 Auto Scaling actions, see the Amazon EC2 Auto Scaling User Guide.
*/
public struct AutoScaling {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "autoscaling",
            serviceProtocol: ServiceProtocol(type: .query),
            apiVersion: "2011-01-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [AutoScalingErrorType.self]
        )
    }

    ///  Attaches one or more EC2 instances to the specified Auto Scaling group. When you attach instances, Amazon EC2 Auto Scaling increases the desired capacity of the group by the number of instances being attached. If the number of instances being attached plus the desired capacity of the group exceeds the maximum size of the group, the operation fails. If there is a Classic Load Balancer attached to your Auto Scaling group, the instances are also registered with the load balancer. If there are target groups attached to your Auto Scaling group, the instances are also registered with the target groups. For more information, see Attach EC2 Instances to Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func attachInstances(_ input: AttachInstancesQuery) throws -> Future<Void> {
        return try client.send(operation: "AttachInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attaches one or more target groups to the specified Auto Scaling group.  To describe the target groups for an Auto Scaling group, use DescribeLoadBalancerTargetGroups. To detach the target group from the Auto Scaling group, use DetachLoadBalancerTargetGroups. With Application Load Balancers and Network Load Balancers, instances are registered as targets with a target group. With Classic Load Balancers, instances are registered with the load balancer. For more information, see Attaching a Load Balancer to Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.
    public func attachLoadBalancerTargetGroups(_ input: AttachLoadBalancerTargetGroupsType) throws -> Future<AttachLoadBalancerTargetGroupsResultType> {
        return try client.send(operation: "AttachLoadBalancerTargetGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attaches one or more Classic Load Balancers to the specified Auto Scaling group. To attach an Application Load Balancer or a Network Load Balancer instead, see AttachLoadBalancerTargetGroups. To describe the load balancers for an Auto Scaling group, use DescribeLoadBalancers. To detach the load balancer from the Auto Scaling group, use DetachLoadBalancers. For more information, see Attaching a Load Balancer to Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.
    public func attachLoadBalancers(_ input: AttachLoadBalancersType) throws -> Future<AttachLoadBalancersResultType> {
        return try client.send(operation: "AttachLoadBalancers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes one or more scheduled actions for the specified Auto Scaling group.
    public func batchDeleteScheduledAction(_ input: BatchDeleteScheduledActionType) throws -> Future<BatchDeleteScheduledActionAnswer> {
        return try client.send(operation: "BatchDeleteScheduledAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates one or more scheduled scaling actions for an Auto Scaling group. If you leave a parameter unspecified when updating a scheduled scaling action, the corresponding value remains unchanged.
    public func batchPutScheduledUpdateGroupAction(_ input: BatchPutScheduledUpdateGroupActionType) throws -> Future<BatchPutScheduledUpdateGroupActionAnswer> {
        return try client.send(operation: "BatchPutScheduledUpdateGroupAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Completes the lifecycle action for the specified token or instance with the specified result. This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:   (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.   (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.   Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.   If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.    If you finish before the timeout period ends, complete the lifecycle action.    For more information, see Amazon EC2 Auto Scaling Lifecycle Hooks in the Amazon EC2 Auto Scaling User Guide.
    public func completeLifecycleAction(_ input: CompleteLifecycleActionType) throws -> Future<CompleteLifecycleActionAnswer> {
        return try client.send(operation: "CompleteLifecycleAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an Auto Scaling group with the specified name and attributes. If you exceed your maximum limit of Auto Scaling groups, the call fails. For information about viewing this limit, see DescribeAccountLimits. For information about updating this limit, see Amazon EC2 Auto Scaling Limits in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func createAutoScalingGroup(_ input: CreateAutoScalingGroupType) throws -> Future<Void> {
        return try client.send(operation: "CreateAutoScalingGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a launch configuration. If you exceed your maximum limit of launch configurations, the call fails. For information about viewing this limit, see DescribeAccountLimits. For information about updating this limit, see Amazon EC2 Auto Scaling Limits in the Amazon EC2 Auto Scaling User Guide. For more information, see Launch Configurations in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func createLaunchConfiguration(_ input: CreateLaunchConfigurationType) throws -> Future<Void> {
        return try client.send(operation: "CreateLaunchConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates tags for the specified Auto Scaling group. When you specify a tag with a key that already exists, the operation overwrites the previous tag definition, and you do not get an error message. For more information, see Tagging Auto Scaling Groups and Instances in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func createOrUpdateTags(_ input: CreateOrUpdateTagsType) throws -> Future<Void> {
        return try client.send(operation: "CreateOrUpdateTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified Auto Scaling group. If the group has instances or scaling activities in progress, you must specify the option to force the deletion in order for it to succeed. If the group has policies, deleting the group deletes the policies, the underlying alarm actions, and any alarm that no longer has an associated action. To remove instances from the Auto Scaling group before deleting it, call DetachInstances with the list of instances and the option to decrement the desired capacity. This ensures that Amazon EC2 Auto Scaling does not launch replacement instances. To terminate all instances before deleting the Auto Scaling group, call UpdateAutoScalingGroup and set the minimum size and desired capacity of the Auto Scaling group to zero.
    @discardableResult public func deleteAutoScalingGroup(_ input: DeleteAutoScalingGroupType) throws -> Future<Void> {
        return try client.send(operation: "DeleteAutoScalingGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified launch configuration. The launch configuration must not be attached to an Auto Scaling group. When this call completes, the launch configuration is no longer available for use.
    @discardableResult public func deleteLaunchConfiguration(_ input: LaunchConfigurationNameType) throws -> Future<Void> {
        return try client.send(operation: "DeleteLaunchConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified lifecycle hook. If there are any outstanding lifecycle actions, they are completed first (ABANDON for launching instances, CONTINUE for terminating instances).
    public func deleteLifecycleHook(_ input: DeleteLifecycleHookType) throws -> Future<DeleteLifecycleHookAnswer> {
        return try client.send(operation: "DeleteLifecycleHook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified notification.
    @discardableResult public func deleteNotificationConfiguration(_ input: DeleteNotificationConfigurationType) throws -> Future<Void> {
        return try client.send(operation: "DeleteNotificationConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified scaling policy. Deleting a policy deletes the underlying alarm action, but does not delete the alarm, even if it no longer has an associated action.
    @discardableResult public func deletePolicy(_ input: DeletePolicyType) throws -> Future<Void> {
        return try client.send(operation: "DeletePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified scheduled action.
    @discardableResult public func deleteScheduledAction(_ input: DeleteScheduledActionType) throws -> Future<Void> {
        return try client.send(operation: "DeleteScheduledAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified tags.
    @discardableResult public func deleteTags(_ input: DeleteTagsType) throws -> Future<Void> {
        return try client.send(operation: "DeleteTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the current Amazon EC2 Auto Scaling resource limits for your AWS account. For information about requesting an increase in these limits, see Amazon EC2 Auto Scaling Limits in the Amazon EC2 Auto Scaling User Guide.
    public func describeAccountLimits() throws -> Future<DescribeAccountLimitsAnswer> {
        return try client.send(operation: "DescribeAccountLimits", path: "/", httpMethod: "POST")
    }

    ///  Describes the policy adjustment types for use with PutScalingPolicy.
    public func describeAdjustmentTypes() throws -> Future<DescribeAdjustmentTypesAnswer> {
        return try client.send(operation: "DescribeAdjustmentTypes", path: "/", httpMethod: "POST")
    }

    ///  Describes one or more Auto Scaling groups.
    public func describeAutoScalingGroups(_ input: AutoScalingGroupNamesType) throws -> Future<AutoScalingGroupsType> {
        return try client.send(operation: "DescribeAutoScalingGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes one or more Auto Scaling instances.
    public func describeAutoScalingInstances(_ input: DescribeAutoScalingInstancesType) throws -> Future<AutoScalingInstancesType> {
        return try client.send(operation: "DescribeAutoScalingInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the notification types that are supported by Amazon EC2 Auto Scaling.
    public func describeAutoScalingNotificationTypes() throws -> Future<DescribeAutoScalingNotificationTypesAnswer> {
        return try client.send(operation: "DescribeAutoScalingNotificationTypes", path: "/", httpMethod: "POST")
    }

    ///  Describes one or more launch configurations.
    public func describeLaunchConfigurations(_ input: LaunchConfigurationNamesType) throws -> Future<LaunchConfigurationsType> {
        return try client.send(operation: "DescribeLaunchConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the available types of lifecycle hooks. The following hook types are supported:   autoscaling:EC2_INSTANCE_LAUNCHING   autoscaling:EC2_INSTANCE_TERMINATING  
    public func describeLifecycleHookTypes() throws -> Future<DescribeLifecycleHookTypesAnswer> {
        return try client.send(operation: "DescribeLifecycleHookTypes", path: "/", httpMethod: "POST")
    }

    ///  Describes the lifecycle hooks for the specified Auto Scaling group.
    public func describeLifecycleHooks(_ input: DescribeLifecycleHooksType) throws -> Future<DescribeLifecycleHooksAnswer> {
        return try client.send(operation: "DescribeLifecycleHooks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the target groups for the specified Auto Scaling group.
    public func describeLoadBalancerTargetGroups(_ input: DescribeLoadBalancerTargetGroupsRequest) throws -> Future<DescribeLoadBalancerTargetGroupsResponse> {
        return try client.send(operation: "DescribeLoadBalancerTargetGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the load balancers for the specified Auto Scaling group. This operation describes only Classic Load Balancers. If you have Application Load Balancers or Network Load Balancers, use DescribeLoadBalancerTargetGroups instead.
    public func describeLoadBalancers(_ input: DescribeLoadBalancersRequest) throws -> Future<DescribeLoadBalancersResponse> {
        return try client.send(operation: "DescribeLoadBalancers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling. The GroupStandbyInstances metric is not returned by default. You must explicitly request this metric when calling EnableMetricsCollection.
    public func describeMetricCollectionTypes() throws -> Future<DescribeMetricCollectionTypesAnswer> {
        return try client.send(operation: "DescribeMetricCollectionTypes", path: "/", httpMethod: "POST")
    }

    ///  Describes the notification actions associated with the specified Auto Scaling group.
    public func describeNotificationConfigurations(_ input: DescribeNotificationConfigurationsType) throws -> Future<DescribeNotificationConfigurationsAnswer> {
        return try client.send(operation: "DescribeNotificationConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the policies for the specified Auto Scaling group.
    public func describePolicies(_ input: DescribePoliciesType) throws -> Future<PoliciesType> {
        return try client.send(operation: "DescribePolicies", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes one or more scaling activities for the specified Auto Scaling group.
    public func describeScalingActivities(_ input: DescribeScalingActivitiesType) throws -> Future<ActivitiesType> {
        return try client.send(operation: "DescribeScalingActivities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the scaling process types for use with ResumeProcesses and SuspendProcesses.
    public func describeScalingProcessTypes() throws -> Future<ProcessesType> {
        return try client.send(operation: "DescribeScalingProcessTypes", path: "/", httpMethod: "POST")
    }

    ///  Describes the actions scheduled for your Auto Scaling group that haven't run. To describe the actions that have already run, use DescribeScalingActivities.
    public func describeScheduledActions(_ input: DescribeScheduledActionsType) throws -> Future<ScheduledActionsType> {
        return try client.send(operation: "DescribeScheduledActions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the specified tags. You can use filters to limit the results. For example, you can query for the tags for a specific Auto Scaling group. You can specify multiple values for a filter. A tag must match at least one of the specified values for it to be included in the results. You can also specify multiple filters. The result includes information for a particular tag only if it matches all the filters. If there's no match, no special message is returned.
    public func describeTags(_ input: DescribeTagsType) throws -> Future<TagsType> {
        return try client.send(operation: "DescribeTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the termination policies supported by Amazon EC2 Auto Scaling. For more information, see Controlling Which Auto Scaling Instances Terminate During Scale In in the Amazon EC2 Auto Scaling User Guide.
    public func describeTerminationPolicyTypes() throws -> Future<DescribeTerminationPolicyTypesAnswer> {
        return try client.send(operation: "DescribeTerminationPolicyTypes", path: "/", httpMethod: "POST")
    }

    ///  Removes one or more instances from the specified Auto Scaling group. After the instances are detached, you can manage them independent of the Auto Scaling group. If you do not specify the option to decrement the desired capacity, Amazon EC2 Auto Scaling launches instances to replace the ones that are detached. If there is a Classic Load Balancer attached to the Auto Scaling group, the instances are deregistered from the load balancer. If there are target groups attached to the Auto Scaling group, the instances are deregistered from the target groups. For more information, see Detach EC2 Instances from Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.
    public func detachInstances(_ input: DetachInstancesQuery) throws -> Future<DetachInstancesAnswer> {
        return try client.send(operation: "DetachInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detaches one or more target groups from the specified Auto Scaling group.
    public func detachLoadBalancerTargetGroups(_ input: DetachLoadBalancerTargetGroupsType) throws -> Future<DetachLoadBalancerTargetGroupsResultType> {
        return try client.send(operation: "DetachLoadBalancerTargetGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detaches one or more Classic Load Balancers from the specified Auto Scaling group. This operation detaches only Classic Load Balancers. If you have Application Load Balancers or Network Load Balancers, use DetachLoadBalancerTargetGroups instead. When you detach a load balancer, it enters the Removing state while deregistering the instances in the group. When all instances are deregistered, then you can no longer describe the load balancer using DescribeLoadBalancers. The instances remain running.
    public func detachLoadBalancers(_ input: DetachLoadBalancersType) throws -> Future<DetachLoadBalancersResultType> {
        return try client.send(operation: "DetachLoadBalancers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disables group metrics for the specified Auto Scaling group.
    @discardableResult public func disableMetricsCollection(_ input: DisableMetricsCollectionQuery) throws -> Future<Void> {
        return try client.send(operation: "DisableMetricsCollection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Enables group metrics for the specified Auto Scaling group. For more information, see Monitoring Your Auto Scaling Groups and Instances in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func enableMetricsCollection(_ input: EnableMetricsCollectionQuery) throws -> Future<Void> {
        return try client.send(operation: "EnableMetricsCollection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Moves the specified instances into the standby state. For more information, see Temporarily Removing Instances from Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.
    public func enterStandby(_ input: EnterStandbyQuery) throws -> Future<EnterStandbyAnswer> {
        return try client.send(operation: "EnterStandby", path: "/", httpMethod: "POST", input: input)
    }

    ///  Executes the specified policy.
    @discardableResult public func executePolicy(_ input: ExecutePolicyType) throws -> Future<Void> {
        return try client.send(operation: "ExecutePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Moves the specified instances out of the standby state. For more information, see Temporarily Removing Instances from Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.
    public func exitStandby(_ input: ExitStandbyQuery) throws -> Future<ExitStandbyAnswer> {
        return try client.send(operation: "ExitStandby", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a lifecycle hook for the specified Auto Scaling group. A lifecycle hook tells Amazon EC2 Auto Scaling to perform an action on an instance when the instance launches (before it is put into service) or as the instance terminates (before it is fully terminated). This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:   (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.   (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.    Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.    If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state using using RecordLifecycleActionHeartbeat.   If you finish before the timeout period ends, complete the lifecycle action using CompleteLifecycleAction.   For more information, see Amazon EC2 Auto Scaling Lifecycle Hooks in the Amazon EC2 Auto Scaling User Guide. If you exceed your maximum limit of lifecycle hooks, which by default is 50 per Auto Scaling group, the call fails. You can view the lifecycle hooks for an Auto Scaling group using DescribeLifecycleHooks. If you are no longer using a lifecycle hook, you can delete it using DeleteLifecycleHook.
    public func putLifecycleHook(_ input: PutLifecycleHookType) throws -> Future<PutLifecycleHookAnswer> {
        return try client.send(operation: "PutLifecycleHook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Configures an Auto Scaling group to send notifications when specified events take place. Subscribers to the specified topic can have messages delivered to an endpoint such as a web server or an email address. This configuration overwrites any existing configuration. For more information, see Getting Amazon SNS Notifications When Your Auto Scaling Group Scales in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func putNotificationConfiguration(_ input: PutNotificationConfigurationType) throws -> Future<Void> {
        return try client.send(operation: "PutNotificationConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a policy for an Auto Scaling group. To update an existing policy, use the existing policy name and set the parameters to change. Any existing parameter not changed in an update to an existing policy is not changed in this update request.
    public func putScalingPolicy(_ input: PutScalingPolicyType) throws -> Future<PolicyARNType> {
        return try client.send(operation: "PutScalingPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a scheduled scaling action for an Auto Scaling group. If you leave a parameter unspecified when updating a scheduled scaling action, the corresponding value remains unchanged. For more information, see Scheduled Scaling in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func putScheduledUpdateGroupAction(_ input: PutScheduledUpdateGroupActionType) throws -> Future<Void> {
        return try client.send(operation: "PutScheduledUpdateGroupAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Records a heartbeat for the lifecycle action associated with the specified token or instance. This extends the timeout by the length of time defined using PutLifecycleHook. This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:   (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.   (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.   Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.    If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.    If you finish before the timeout period ends, complete the lifecycle action.   For more information, see Auto Scaling Lifecycle in the Amazon EC2 Auto Scaling User Guide.
    public func recordLifecycleActionHeartbeat(_ input: RecordLifecycleActionHeartbeatType) throws -> Future<RecordLifecycleActionHeartbeatAnswer> {
        return try client.send(operation: "RecordLifecycleActionHeartbeat", path: "/", httpMethod: "POST", input: input)
    }

    ///  Resumes the specified suspended automatic scaling processes, or all suspended process, for the specified Auto Scaling group. For more information, see Suspending and Resuming Scaling Processes in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func resumeProcesses(_ input: ScalingProcessQuery) throws -> Future<Void> {
        return try client.send(operation: "ResumeProcesses", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the size of the specified Auto Scaling group. For more information about desired capacity, see What Is Amazon EC2 Auto Scaling? in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func setDesiredCapacity(_ input: SetDesiredCapacityType) throws -> Future<Void> {
        return try client.send(operation: "SetDesiredCapacity", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the health status of the specified instance. For more information, see Health Checks for Auto Scaling Instances in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func setInstanceHealth(_ input: SetInstanceHealthQuery) throws -> Future<Void> {
        return try client.send(operation: "SetInstanceHealth", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the instance protection settings of the specified instances. For more information about preventing instances that are part of an Auto Scaling group from terminating on scale in, see Instance Protection in the Amazon EC2 Auto Scaling User Guide.
    public func setInstanceProtection(_ input: SetInstanceProtectionQuery) throws -> Future<SetInstanceProtectionAnswer> {
        return try client.send(operation: "SetInstanceProtection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Suspends the specified automatic scaling processes, or all processes, for the specified Auto Scaling group. If you suspend either the Launch or Terminate process types, it can prevent other process types from functioning properly. To resume processes that have been suspended, use ResumeProcesses. For more information, see Suspending and Resuming Scaling Processes in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func suspendProcesses(_ input: ScalingProcessQuery) throws -> Future<Void> {
        return try client.send(operation: "SuspendProcesses", path: "/", httpMethod: "POST", input: input)
    }

    ///  Terminates the specified instance and optionally adjusts the desired group size. This call simply makes a termination request. The instance is not terminated immediately.
    public func terminateInstanceInAutoScalingGroup(_ input: TerminateInstanceInAutoScalingGroupType) throws -> Future<ActivityType> {
        return try client.send(operation: "TerminateInstanceInAutoScalingGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the configuration for the specified Auto Scaling group. The new settings take effect on any scaling activities after this call returns. Scaling activities that are currently in progress aren't affected. To update an Auto Scaling group with a launch configuration with InstanceMonitoring set to false, you must first disable the collection of group metrics. Otherwise, you get an error. If you have previously enabled the collection of group metrics, you can disable it using DisableMetricsCollection. Note the following:   If you specify a new value for MinSize without specifying a value for DesiredCapacity, and the new MinSize is larger than the current size of the group, we implicitly call SetDesiredCapacity to set the size of the group to the new value of MinSize.   If you specify a new value for MaxSize without specifying a value for DesiredCapacity, and the new MaxSize is smaller than the current size of the group, we implicitly call SetDesiredCapacity to set the size of the group to the new value of MaxSize.   All other optional parameters are left unchanged if not specified.  
    @discardableResult public func updateAutoScalingGroup(_ input: UpdateAutoScalingGroupType) throws -> Future<Void> {
        return try client.send(operation: "UpdateAutoScalingGroup", path: "/", httpMethod: "POST", input: input)
    }
}
