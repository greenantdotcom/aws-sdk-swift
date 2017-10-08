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

/// Error enum for Elasticache
public enum ElasticacheError: AWSErrorType {
    case reservedCacheNodeNotFoundFault(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidParameterCombinationException(message: String?)
    case invalidCacheSecurityGroupStateFault(message: String?)
    case cacheSecurityGroupNotFoundFault(message: String?)
    case cacheParameterGroupQuotaExceededFault(message: String?)
    case cacheParameterGroupAlreadyExistsFault(message: String?)
    case invalidCacheParameterGroupStateFault(message: String?)
    case aPICallRateForCustomerExceededFault(message: String?)
    case invalidCacheClusterStateFault(message: String?)
    case invalidReplicationGroupStateFault(message: String?)
    case nodeGroupNotFoundFault(message: String?)
    case replicationGroupNotFoundFault(message: String?)
    case testFailoverNotAvailableFault(message: String?)
    case cacheParameterGroupNotFoundFault(message: String?)
    case cacheSubnetGroupInUse(message: String?)
    case cacheSubnetGroupNotFoundFault(message: String?)
    case cacheClusterNotFoundFault(message: String?)
    case snapshotAlreadyExistsFault(message: String?)
    case snapshotFeatureNotSupportedFault(message: String?)
    case snapshotQuotaExceededFault(message: String?)
    case snapshotNotFoundFault(message: String?)
    case invalidARNFault(message: String?)
    case invalidSnapshotStateFault(message: String?)
    case authorizationAlreadyExistsFault(message: String?)
    case reservedCacheNodesOfferingNotFoundFault(message: String?)
    case reservedCacheNodeAlreadyExistsFault(message: String?)
    case reservedCacheNodeQuotaExceededFault(message: String?)
    case cacheSubnetGroupAlreadyExistsFault(message: String?)
    case cacheSubnetGroupQuotaExceededFault(message: String?)
    case cacheSubnetQuotaExceededFault(message: String?)
    case invalidSubnet(message: String?)
    case cacheClusterAlreadyExistsFault(message: String?)
    case insufficientCacheClusterCapacityFault(message: String?)
    case clusterQuotaForCustomerExceededFault(message: String?)
    case nodeQuotaForClusterExceededFault(message: String?)
    case nodeQuotaForCustomerExceededFault(message: String?)
    case invalidVPCNetworkStateFault(message: String?)
    case tagQuotaPerResourceExceeded(message: String?)
    case cacheSecurityGroupAlreadyExistsFault(message: String?)
    case cacheSecurityGroupQuotaExceededFault(message: String?)
    case tagNotFoundFault(message: String?)
    case replicationGroupAlreadyExistsFault(message: String?)
    case nodeGroupsPerReplicationGroupQuotaExceededFault(message: String?)
    case authorizationNotFoundFault(message: String?)
    case subnetInUse(message: String?)
}

extension ElasticacheError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ReservedCacheNodeNotFoundFault":
            self = .reservedCacheNodeNotFoundFault(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "InvalidParameterCombinationException":
            self = .invalidParameterCombinationException(message: message)
        case "InvalidCacheSecurityGroupStateFault":
            self = .invalidCacheSecurityGroupStateFault(message: message)
        case "CacheSecurityGroupNotFoundFault":
            self = .cacheSecurityGroupNotFoundFault(message: message)
        case "CacheParameterGroupQuotaExceededFault":
            self = .cacheParameterGroupQuotaExceededFault(message: message)
        case "CacheParameterGroupAlreadyExistsFault":
            self = .cacheParameterGroupAlreadyExistsFault(message: message)
        case "InvalidCacheParameterGroupStateFault":
            self = .invalidCacheParameterGroupStateFault(message: message)
        case "APICallRateForCustomerExceededFault":
            self = .aPICallRateForCustomerExceededFault(message: message)
        case "InvalidCacheClusterStateFault":
            self = .invalidCacheClusterStateFault(message: message)
        case "InvalidReplicationGroupStateFault":
            self = .invalidReplicationGroupStateFault(message: message)
        case "NodeGroupNotFoundFault":
            self = .nodeGroupNotFoundFault(message: message)
        case "ReplicationGroupNotFoundFault":
            self = .replicationGroupNotFoundFault(message: message)
        case "TestFailoverNotAvailableFault":
            self = .testFailoverNotAvailableFault(message: message)
        case "CacheParameterGroupNotFoundFault":
            self = .cacheParameterGroupNotFoundFault(message: message)
        case "CacheSubnetGroupInUse":
            self = .cacheSubnetGroupInUse(message: message)
        case "CacheSubnetGroupNotFoundFault":
            self = .cacheSubnetGroupNotFoundFault(message: message)
        case "CacheClusterNotFoundFault":
            self = .cacheClusterNotFoundFault(message: message)
        case "SnapshotAlreadyExistsFault":
            self = .snapshotAlreadyExistsFault(message: message)
        case "SnapshotFeatureNotSupportedFault":
            self = .snapshotFeatureNotSupportedFault(message: message)
        case "SnapshotQuotaExceededFault":
            self = .snapshotQuotaExceededFault(message: message)
        case "SnapshotNotFoundFault":
            self = .snapshotNotFoundFault(message: message)
        case "InvalidARNFault":
            self = .invalidARNFault(message: message)
        case "InvalidSnapshotStateFault":
            self = .invalidSnapshotStateFault(message: message)
        case "AuthorizationAlreadyExistsFault":
            self = .authorizationAlreadyExistsFault(message: message)
        case "ReservedCacheNodesOfferingNotFoundFault":
            self = .reservedCacheNodesOfferingNotFoundFault(message: message)
        case "ReservedCacheNodeAlreadyExistsFault":
            self = .reservedCacheNodeAlreadyExistsFault(message: message)
        case "ReservedCacheNodeQuotaExceededFault":
            self = .reservedCacheNodeQuotaExceededFault(message: message)
        case "CacheSubnetGroupAlreadyExistsFault":
            self = .cacheSubnetGroupAlreadyExistsFault(message: message)
        case "CacheSubnetGroupQuotaExceededFault":
            self = .cacheSubnetGroupQuotaExceededFault(message: message)
        case "CacheSubnetQuotaExceededFault":
            self = .cacheSubnetQuotaExceededFault(message: message)
        case "InvalidSubnet":
            self = .invalidSubnet(message: message)
        case "CacheClusterAlreadyExistsFault":
            self = .cacheClusterAlreadyExistsFault(message: message)
        case "InsufficientCacheClusterCapacityFault":
            self = .insufficientCacheClusterCapacityFault(message: message)
        case "ClusterQuotaForCustomerExceededFault":
            self = .clusterQuotaForCustomerExceededFault(message: message)
        case "NodeQuotaForClusterExceededFault":
            self = .nodeQuotaForClusterExceededFault(message: message)
        case "NodeQuotaForCustomerExceededFault":
            self = .nodeQuotaForCustomerExceededFault(message: message)
        case "InvalidVPCNetworkStateFault":
            self = .invalidVPCNetworkStateFault(message: message)
        case "TagQuotaPerResourceExceeded":
            self = .tagQuotaPerResourceExceeded(message: message)
        case "CacheSecurityGroupAlreadyExistsFault":
            self = .cacheSecurityGroupAlreadyExistsFault(message: message)
        case "CacheSecurityGroupQuotaExceededFault":
            self = .cacheSecurityGroupQuotaExceededFault(message: message)
        case "TagNotFoundFault":
            self = .tagNotFoundFault(message: message)
        case "ReplicationGroupAlreadyExistsFault":
            self = .replicationGroupAlreadyExistsFault(message: message)
        case "NodeGroupsPerReplicationGroupQuotaExceededFault":
            self = .nodeGroupsPerReplicationGroupQuotaExceededFault(message: message)
        case "AuthorizationNotFoundFault":
            self = .authorizationNotFoundFault(message: message)
        case "SubnetInUse":
            self = .subnetInUse(message: message)
        default:
            return nil
        }
    }
}