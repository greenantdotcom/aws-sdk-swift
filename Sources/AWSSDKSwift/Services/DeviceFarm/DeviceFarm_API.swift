// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Device Farm is a service that enables mobile app developers to test Android, iOS, and Fire OS apps on physical phones, tablets, and other devices in the cloud.
*/
public struct DeviceFarm {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "DeviceFarm_20150623",
            service: "devicefarm",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-06-23",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [DeviceFarmErrorType.self]
        )
    }

    ///  Creates a device pool.
    public func createDevicePool(_ input: CreateDevicePoolRequest) throws -> Future<CreateDevicePoolResult> {
        return try client.send(operation: "CreateDevicePool", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a profile that can be applied to one or more private fleet device instances.
    public func createInstanceProfile(_ input: CreateInstanceProfileRequest) throws -> Future<CreateInstanceProfileResult> {
        return try client.send(operation: "CreateInstanceProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a network profile.
    public func createNetworkProfile(_ input: CreateNetworkProfileRequest) throws -> Future<CreateNetworkProfileResult> {
        return try client.send(operation: "CreateNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new project.
    public func createProject(_ input: CreateProjectRequest) throws -> Future<CreateProjectResult> {
        return try client.send(operation: "CreateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Specifies and starts a remote access session.
    public func createRemoteAccessSession(_ input: CreateRemoteAccessSessionRequest) throws -> Future<CreateRemoteAccessSessionResult> {
        return try client.send(operation: "CreateRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Uploads an app or test scripts.
    public func createUpload(_ input: CreateUploadRequest) throws -> Future<CreateUploadResult> {
        return try client.send(operation: "CreateUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a configuration record in Device Farm for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func createVPCEConfiguration(_ input: CreateVPCEConfigurationRequest) throws -> Future<CreateVPCEConfigurationResult> {
        return try client.send(operation: "CreateVPCEConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a device pool given the pool ARN. Does not allow deletion of curated pools owned by the system.
    public func deleteDevicePool(_ input: DeleteDevicePoolRequest) throws -> Future<DeleteDevicePoolResult> {
        return try client.send(operation: "DeleteDevicePool", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a profile that can be applied to one or more private device instances.
    public func deleteInstanceProfile(_ input: DeleteInstanceProfileRequest) throws -> Future<DeleteInstanceProfileResult> {
        return try client.send(operation: "DeleteInstanceProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a network profile.
    public func deleteNetworkProfile(_ input: DeleteNetworkProfileRequest) throws -> Future<DeleteNetworkProfileResult> {
        return try client.send(operation: "DeleteNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an AWS Device Farm project, given the project ARN.  Note Deleting this resource does not stop an in-progress run.
    public func deleteProject(_ input: DeleteProjectRequest) throws -> Future<DeleteProjectResult> {
        return try client.send(operation: "DeleteProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a completed remote access session and its results.
    public func deleteRemoteAccessSession(_ input: DeleteRemoteAccessSessionRequest) throws -> Future<DeleteRemoteAccessSessionResult> {
        return try client.send(operation: "DeleteRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the run, given the run ARN.  Note Deleting this resource does not stop an in-progress run.
    public func deleteRun(_ input: DeleteRunRequest) throws -> Future<DeleteRunResult> {
        return try client.send(operation: "DeleteRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an upload given the upload ARN.
    public func deleteUpload(_ input: DeleteUploadRequest) throws -> Future<DeleteUploadResult> {
        return try client.send(operation: "DeleteUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a configuration for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func deleteVPCEConfiguration(_ input: DeleteVPCEConfigurationRequest) throws -> Future<DeleteVPCEConfigurationResult> {
        return try client.send(operation: "DeleteVPCEConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the number of unmetered iOS and/or unmetered Android devices that have been purchased by the account.
    public func getAccountSettings(_ input: GetAccountSettingsRequest) throws -> Future<GetAccountSettingsResult> {
        return try client.send(operation: "GetAccountSettings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a unique device type.
    public func getDevice(_ input: GetDeviceRequest) throws -> Future<GetDeviceResult> {
        return try client.send(operation: "GetDevice", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a device instance belonging to a private device fleet.
    public func getDeviceInstance(_ input: GetDeviceInstanceRequest) throws -> Future<GetDeviceInstanceResult> {
        return try client.send(operation: "GetDeviceInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a device pool.
    public func getDevicePool(_ input: GetDevicePoolRequest) throws -> Future<GetDevicePoolResult> {
        return try client.send(operation: "GetDevicePool", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about compatibility with a device pool.
    public func getDevicePoolCompatibility(_ input: GetDevicePoolCompatibilityRequest) throws -> Future<GetDevicePoolCompatibilityResult> {
        return try client.send(operation: "GetDevicePoolCompatibility", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the specified instance profile.
    public func getInstanceProfile(_ input: GetInstanceProfileRequest) throws -> Future<GetInstanceProfileResult> {
        return try client.send(operation: "GetInstanceProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a job.
    public func getJob(_ input: GetJobRequest) throws -> Future<GetJobResult> {
        return try client.send(operation: "GetJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a network profile.
    public func getNetworkProfile(_ input: GetNetworkProfileRequest) throws -> Future<GetNetworkProfileResult> {
        return try client.send(operation: "GetNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the current status and future status of all offerings purchased by an AWS account. The response indicates how many offerings are currently available and the offerings that will be available in the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. Please contact aws-devicefarm-support@amazon.com if you believe that you should be able to invoke this operation.
    public func getOfferingStatus(_ input: GetOfferingStatusRequest) throws -> Future<GetOfferingStatusResult> {
        return try client.send(operation: "GetOfferingStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a project.
    public func getProject(_ input: GetProjectRequest) throws -> Future<GetProjectResult> {
        return try client.send(operation: "GetProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a link to a currently running remote access session.
    public func getRemoteAccessSession(_ input: GetRemoteAccessSessionRequest) throws -> Future<GetRemoteAccessSessionResult> {
        return try client.send(operation: "GetRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a run.
    public func getRun(_ input: GetRunRequest) throws -> Future<GetRunResult> {
        return try client.send(operation: "GetRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a suite.
    public func getSuite(_ input: GetSuiteRequest) throws -> Future<GetSuiteResult> {
        return try client.send(operation: "GetSuite", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a test.
    public func getTest(_ input: GetTestRequest) throws -> Future<GetTestResult> {
        return try client.send(operation: "GetTest", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about an upload.
    public func getUpload(_ input: GetUploadRequest) throws -> Future<GetUploadResult> {
        return try client.send(operation: "GetUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the configuration settings for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func getVPCEConfiguration(_ input: GetVPCEConfigurationRequest) throws -> Future<GetVPCEConfigurationResult> {
        return try client.send(operation: "GetVPCEConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Installs an application to the device in a remote access session. For Android applications, the file must be in .apk format. For iOS applications, the file must be in .ipa format.
    public func installToRemoteAccessSession(_ input: InstallToRemoteAccessSessionRequest) throws -> Future<InstallToRemoteAccessSessionResult> {
        return try client.send(operation: "InstallToRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about artifacts.
    public func listArtifacts(_ input: ListArtifactsRequest) throws -> Future<ListArtifactsResult> {
        return try client.send(operation: "ListArtifacts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the private device instances associated with one or more AWS accounts.
    public func listDeviceInstances(_ input: ListDeviceInstancesRequest) throws -> Future<ListDeviceInstancesResult> {
        return try client.send(operation: "ListDeviceInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about device pools.
    public func listDevicePools(_ input: ListDevicePoolsRequest) throws -> Future<ListDevicePoolsResult> {
        return try client.send(operation: "ListDevicePools", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about unique device types.
    public func listDevices(_ input: ListDevicesRequest) throws -> Future<ListDevicesResult> {
        return try client.send(operation: "ListDevices", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all the instance profiles in an AWS account.
    public func listInstanceProfiles(_ input: ListInstanceProfilesRequest) throws -> Future<ListInstanceProfilesResult> {
        return try client.send(operation: "ListInstanceProfiles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about jobs for a given test run.
    public func listJobs(_ input: ListJobsRequest) throws -> Future<ListJobsResult> {
        return try client.send(operation: "ListJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the list of available network profiles.
    public func listNetworkProfiles(_ input: ListNetworkProfilesRequest) throws -> Future<ListNetworkProfilesResult> {
        return try client.send(operation: "ListNetworkProfiles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of offering promotions. Each offering promotion record contains the ID and description of the promotion. The API returns a NotEligible error if the caller is not permitted to invoke the operation. Contact aws-devicefarm-support@amazon.com if you believe that you should be able to invoke this operation.
    public func listOfferingPromotions(_ input: ListOfferingPromotionsRequest) throws -> Future<ListOfferingPromotionsResult> {
        return try client.send(operation: "ListOfferingPromotions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS account. The list is paginated and ordered by a descending timestamp (most recent transactions are first). The API returns a NotEligible error if the user is not permitted to invoke the operation. Please contact aws-devicefarm-support@amazon.com if you believe that you should be able to invoke this operation.
    public func listOfferingTransactions(_ input: ListOfferingTransactionsRequest) throws -> Future<ListOfferingTransactionsResult> {
        return try client.send(operation: "ListOfferingTransactions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of products or offerings that the user can manage through the API. Each offering record indicates the recurring price per unit and the frequency for that offering. The API returns a NotEligible error if the user is not permitted to invoke the operation. Please contact aws-devicefarm-support@amazon.com if you believe that you should be able to invoke this operation.
    public func listOfferings(_ input: ListOfferingsRequest) throws -> Future<ListOfferingsResult> {
        return try client.send(operation: "ListOfferings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about projects.
    public func listProjects(_ input: ListProjectsRequest) throws -> Future<ListProjectsResult> {
        return try client.send(operation: "ListProjects", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all currently running remote access sessions.
    public func listRemoteAccessSessions(_ input: ListRemoteAccessSessionsRequest) throws -> Future<ListRemoteAccessSessionsResult> {
        return try client.send(operation: "ListRemoteAccessSessions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about runs, given an AWS Device Farm project ARN.
    public func listRuns(_ input: ListRunsRequest) throws -> Future<ListRunsResult> {
        return try client.send(operation: "ListRuns", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about samples, given an AWS Device Farm job ARN.
    public func listSamples(_ input: ListSamplesRequest) throws -> Future<ListSamplesResult> {
        return try client.send(operation: "ListSamples", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about test suites for a given job.
    public func listSuites(_ input: ListSuitesRequest) throws -> Future<ListSuitesResult> {
        return try client.send(operation: "ListSuites", path: "/", httpMethod: "POST", input: input)
    }

    ///  List the tags for an AWS Device Farm resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about tests in a given test suite.
    public func listTests(_ input: ListTestsRequest) throws -> Future<ListTestsResult> {
        return try client.send(operation: "ListTests", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about unique problems.
    public func listUniqueProblems(_ input: ListUniqueProblemsRequest) throws -> Future<ListUniqueProblemsResult> {
        return try client.send(operation: "ListUniqueProblems", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about uploads, given an AWS Device Farm project ARN.
    public func listUploads(_ input: ListUploadsRequest) throws -> Future<ListUploadsResult> {
        return try client.send(operation: "ListUploads", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all Amazon Virtual Private Cloud (VPC) endpoint configurations in the AWS account.
    public func listVPCEConfigurations(_ input: ListVPCEConfigurationsRequest) throws -> Future<ListVPCEConfigurationsResult> {
        return try client.send(operation: "ListVPCEConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Immediately purchases offerings for an AWS account. Offerings renew with the latest total purchased quantity for an offering, unless the renewal was overridden. The API returns a NotEligible error if the user is not permitted to invoke the operation. Please contact aws-devicefarm-support@amazon.com if you believe that you should be able to invoke this operation.
    public func purchaseOffering(_ input: PurchaseOfferingRequest) throws -> Future<PurchaseOfferingResult> {
        return try client.send(operation: "PurchaseOffering", path: "/", httpMethod: "POST", input: input)
    }

    ///  Explicitly sets the quantity of devices to renew for an offering, starting from the effectiveDate of the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. Please contact aws-devicefarm-support@amazon.com if you believe that you should be able to invoke this operation.
    public func renewOffering(_ input: RenewOfferingRequest) throws -> Future<RenewOfferingResult> {
        return try client.send(operation: "RenewOffering", path: "/", httpMethod: "POST", input: input)
    }

    ///  Schedules a run.
    public func scheduleRun(_ input: ScheduleRunRequest) throws -> Future<ScheduleRunResult> {
        return try client.send(operation: "ScheduleRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Initiates a stop request for the current job. AWS Device Farm will immediately stop the job on the device where tests have not started executing, and you will not be billed for this device. On the device where tests have started executing, Setup Suite and Teardown Suite tests will run to completion before stopping execution on the device. You will be billed for Setup, Teardown, and any tests that were in progress or already completed.
    public func stopJob(_ input: StopJobRequest) throws -> Future<StopJobResult> {
        return try client.send(operation: "StopJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Ends a specified remote access session.
    public func stopRemoteAccessSession(_ input: StopRemoteAccessSessionRequest) throws -> Future<StopRemoteAccessSessionResult> {
        return try client.send(operation: "StopRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Initiates a stop request for the current test run. AWS Device Farm will immediately stop the run on devices where tests have not started executing, and you will not be billed for these devices. On devices where tests have started executing, Setup Suite and Teardown Suite tests will run to completion before stopping execution on those devices. You will be billed for Setup, Teardown, and any tests that were in progress or already completed.
    public func stopRun(_ input: StopRunRequest) throws -> Future<StopRunResult> {
        return try client.send(operation: "StopRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.
    public func tagResource(_ input: TagResourceRequest) throws -> Future<TagResourceResponse> {
        return try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified tags from a resource.
    public func untagResource(_ input: UntagResourceRequest) throws -> Future<UntagResourceResponse> {
        return try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates information about an existing private device instance.
    public func updateDeviceInstance(_ input: UpdateDeviceInstanceRequest) throws -> Future<UpdateDeviceInstanceResult> {
        return try client.send(operation: "UpdateDeviceInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the name, description, and rules in a device pool given the attributes and the pool ARN. Rule updates are all-or-nothing, meaning they can only be updated as a whole (or not at all).
    public func updateDevicePool(_ input: UpdateDevicePoolRequest) throws -> Future<UpdateDevicePoolResult> {
        return try client.send(operation: "UpdateDevicePool", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates information about an existing private device instance profile.
    public func updateInstanceProfile(_ input: UpdateInstanceProfileRequest) throws -> Future<UpdateInstanceProfileResult> {
        return try client.send(operation: "UpdateInstanceProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the network profile with specific settings.
    public func updateNetworkProfile(_ input: UpdateNetworkProfileRequest) throws -> Future<UpdateNetworkProfileResult> {
        return try client.send(operation: "UpdateNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the specified project name, given the project ARN and a new name.
    public func updateProject(_ input: UpdateProjectRequest) throws -> Future<UpdateProjectResult> {
        return try client.send(operation: "UpdateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Update an uploaded test specification (test spec).
    public func updateUpload(_ input: UpdateUploadRequest) throws -> Future<UpdateUploadResult> {
        return try client.send(operation: "UpdateUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates information about an existing Amazon Virtual Private Cloud (VPC) endpoint configuration.
    public func updateVPCEConfiguration(_ input: UpdateVPCEConfigurationRequest) throws -> Future<UpdateVPCEConfigurationResult> {
        return try client.send(operation: "UpdateVPCEConfiguration", path: "/", httpMethod: "POST", input: input)
    }
}
