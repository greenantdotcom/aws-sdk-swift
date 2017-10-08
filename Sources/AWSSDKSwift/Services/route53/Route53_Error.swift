// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import AWSSDKSwiftCore

/// Error enum for Route53
public enum Route53Error: AWSErrorType {
    case invalidInput(message: String?)
    case tooManyTrafficPolicies(message: String?)
    case trafficPolicyAlreadyExists(message: String?)
    case invalidTrafficPolicyDocument(message: String?)
    case noSuchTrafficPolicyInstance(message: String?)
    case noSuchHostedZone(message: String?)
    case invalidVPCId(message: String?)
    case vPCAssociationNotFound(message: String?)
    case lastVPCAssociation(message: String?)
    case noSuchHealthCheck(message: String?)
    case priorRequestNotComplete(message: String?)
    case throttlingException(message: String?)
    case healthCheckInUse(message: String?)
    case noSuchDelegationSet(message: String?)
    case delegationSetNotReusable(message: String?)
    case noSuchTrafficPolicy(message: String?)
    case concurrentModification(message: String?)
    case incompatibleVersion(message: String?)
    case tooManyVPCAssociationAuthorizations(message: String?)
    case invalidDomainName(message: String?)
    case delegationSetAlreadyCreated(message: String?)
    case limitsExceeded(message: String?)
    case hostedZoneNotFound(message: String?)
    case invalidArgument(message: String?)
    case delegationSetNotAvailable(message: String?)
    case delegationSetAlreadyReusable(message: String?)
    case tooManyHealthChecks(message: String?)
    case healthCheckAlreadyExists(message: String?)
    case hostedZoneNotEmpty(message: String?)
    case vPCAssociationAuthorizationNotFound(message: String?)
    case noSuchChange(message: String?)
    case healthCheckVersionMismatch(message: String?)
    case conflictingTypes(message: String?)
    case invalidChangeBatch(message: String?)
    case trafficPolicyInUse(message: String?)
    case tooManyTrafficPolicyInstances(message: String?)
    case trafficPolicyInstanceAlreadyExists(message: String?)
    case invalidPaginationToken(message: String?)
    case notAuthorizedException(message: String?)
    case publicZoneVPCAssociation(message: String?)
    case conflictingDomainExists(message: String?)
    case delegationSetInUse(message: String?)
    case noSuchGeoLocation(message: String?)
    case hostedZoneAlreadyExists(message: String?)
    case tooManyHostedZones(message: String?)
}

extension Route53Error {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidInput":
            self = .invalidInput(message: message)
        case "TooManyTrafficPolicies":
            self = .tooManyTrafficPolicies(message: message)
        case "TrafficPolicyAlreadyExists":
            self = .trafficPolicyAlreadyExists(message: message)
        case "InvalidTrafficPolicyDocument":
            self = .invalidTrafficPolicyDocument(message: message)
        case "NoSuchTrafficPolicyInstance":
            self = .noSuchTrafficPolicyInstance(message: message)
        case "NoSuchHostedZone":
            self = .noSuchHostedZone(message: message)
        case "InvalidVPCId":
            self = .invalidVPCId(message: message)
        case "VPCAssociationNotFound":
            self = .vPCAssociationNotFound(message: message)
        case "LastVPCAssociation":
            self = .lastVPCAssociation(message: message)
        case "NoSuchHealthCheck":
            self = .noSuchHealthCheck(message: message)
        case "PriorRequestNotComplete":
            self = .priorRequestNotComplete(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "HealthCheckInUse":
            self = .healthCheckInUse(message: message)
        case "NoSuchDelegationSet":
            self = .noSuchDelegationSet(message: message)
        case "DelegationSetNotReusable":
            self = .delegationSetNotReusable(message: message)
        case "NoSuchTrafficPolicy":
            self = .noSuchTrafficPolicy(message: message)
        case "ConcurrentModification":
            self = .concurrentModification(message: message)
        case "IncompatibleVersion":
            self = .incompatibleVersion(message: message)
        case "TooManyVPCAssociationAuthorizations":
            self = .tooManyVPCAssociationAuthorizations(message: message)
        case "InvalidDomainName":
            self = .invalidDomainName(message: message)
        case "DelegationSetAlreadyCreated":
            self = .delegationSetAlreadyCreated(message: message)
        case "LimitsExceeded":
            self = .limitsExceeded(message: message)
        case "HostedZoneNotFound":
            self = .hostedZoneNotFound(message: message)
        case "InvalidArgument":
            self = .invalidArgument(message: message)
        case "DelegationSetNotAvailable":
            self = .delegationSetNotAvailable(message: message)
        case "DelegationSetAlreadyReusable":
            self = .delegationSetAlreadyReusable(message: message)
        case "TooManyHealthChecks":
            self = .tooManyHealthChecks(message: message)
        case "HealthCheckAlreadyExists":
            self = .healthCheckAlreadyExists(message: message)
        case "HostedZoneNotEmpty":
            self = .hostedZoneNotEmpty(message: message)
        case "VPCAssociationAuthorizationNotFound":
            self = .vPCAssociationAuthorizationNotFound(message: message)
        case "NoSuchChange":
            self = .noSuchChange(message: message)
        case "HealthCheckVersionMismatch":
            self = .healthCheckVersionMismatch(message: message)
        case "ConflictingTypes":
            self = .conflictingTypes(message: message)
        case "InvalidChangeBatch":
            self = .invalidChangeBatch(message: message)
        case "TrafficPolicyInUse":
            self = .trafficPolicyInUse(message: message)
        case "TooManyTrafficPolicyInstances":
            self = .tooManyTrafficPolicyInstances(message: message)
        case "TrafficPolicyInstanceAlreadyExists":
            self = .trafficPolicyInstanceAlreadyExists(message: message)
        case "InvalidPaginationToken":
            self = .invalidPaginationToken(message: message)
        case "NotAuthorizedException":
            self = .notAuthorizedException(message: message)
        case "PublicZoneVPCAssociation":
            self = .publicZoneVPCAssociation(message: message)
        case "ConflictingDomainExists":
            self = .conflictingDomainExists(message: message)
        case "DelegationSetInUse":
            self = .delegationSetInUse(message: message)
        case "NoSuchGeoLocation":
            self = .noSuchGeoLocation(message: message)
        case "HostedZoneAlreadyExists":
            self = .hostedZoneAlreadyExists(message: message)
        case "TooManyHostedZones":
            self = .tooManyHostedZones(message: message)
        default:
            return nil
        }
    }
}