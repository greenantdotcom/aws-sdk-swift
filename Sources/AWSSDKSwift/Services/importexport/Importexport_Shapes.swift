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

import Foundation
import AWSSDKSwiftCore

extension Importexport {

    public struct ListJobsInput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Marker", required: false, type: .string), 
            AWSShapeMember(label: "MaxJobs", required: false, type: .integer), 
            AWSShapeMember(label: "APIVersion", required: false, type: .string)
        ]
        public let marker: String?
        public let maxJobs: Int32?
        public let aPIVersion: String?

        public init(marker: String? = nil, maxJobs: Int32? = nil, aPIVersion: String? = nil) {
            self.marker = marker
            self.maxJobs = maxJobs
            self.aPIVersion = aPIVersion
        }

        private enum CodingKeys: String, CodingKey {
            case marker = "Marker"
            case maxJobs = "MaxJobs"
            case aPIVersion = "APIVersion"
        }
    }

    public struct CreateJobInput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "JobType", required: true, type: .enum), 
            AWSShapeMember(label: "ManifestAddendum", required: false, type: .string), 
            AWSShapeMember(label: "Manifest", required: true, type: .string), 
            AWSShapeMember(label: "APIVersion", required: false, type: .string), 
            AWSShapeMember(label: "ValidateOnly", required: true, type: .boolean)
        ]
        public let jobType: JobType
        public let manifestAddendum: String?
        public let manifest: String
        public let aPIVersion: String?
        public let validateOnly: Bool

        public init(jobType: JobType, manifestAddendum: String? = nil, manifest: String, aPIVersion: String? = nil, validateOnly: Bool) {
            self.jobType = jobType
            self.manifestAddendum = manifestAddendum
            self.manifest = manifest
            self.aPIVersion = aPIVersion
            self.validateOnly = validateOnly
        }

        private enum CodingKeys: String, CodingKey {
            case jobType = "JobType"
            case manifestAddendum = "ManifestAddendum"
            case manifest = "Manifest"
            case aPIVersion = "APIVersion"
            case validateOnly = "ValidateOnly"
        }
    }

    public struct GetShippingLabelInput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "stateOrProvince", required: false, type: .string), 
            AWSShapeMember(label: "city", required: false, type: .string), 
            AWSShapeMember(label: "postalCode", required: false, type: .string), 
            AWSShapeMember(label: "name", required: false, type: .string), 
            AWSShapeMember(label: "phoneNumber", required: false, type: .string), 
            AWSShapeMember(label: "street3", required: false, type: .string), 
            AWSShapeMember(label: "jobIds", required: true, type: .list), 
            AWSShapeMember(label: "APIVersion", required: false, type: .string), 
            AWSShapeMember(label: "street2", required: false, type: .string), 
            AWSShapeMember(label: "street1", required: false, type: .string), 
            AWSShapeMember(label: "company", required: false, type: .string), 
            AWSShapeMember(label: "country", required: false, type: .string)
        ]
        public let stateOrProvince: String?
        public let city: String?
        public let postalCode: String?
        public let name: String?
        public let phoneNumber: String?
        public let street3: String?
        public let jobIds: [String]
        public let aPIVersion: String?
        public let street2: String?
        public let street1: String?
        public let company: String?
        public let country: String?

        public init(stateOrProvince: String? = nil, city: String? = nil, postalCode: String? = nil, name: String? = nil, phoneNumber: String? = nil, street3: String? = nil, jobIds: [String], aPIVersion: String? = nil, street2: String? = nil, street1: String? = nil, company: String? = nil, country: String? = nil) {
            self.stateOrProvince = stateOrProvince
            self.city = city
            self.postalCode = postalCode
            self.name = name
            self.phoneNumber = phoneNumber
            self.street3 = street3
            self.jobIds = jobIds
            self.aPIVersion = aPIVersion
            self.street2 = street2
            self.street1 = street1
            self.company = company
            self.country = country
        }

        private enum CodingKeys: String, CodingKey {
            case stateOrProvince = "stateOrProvince"
            case city = "city"
            case postalCode = "postalCode"
            case name = "name"
            case phoneNumber = "phoneNumber"
            case street3 = "street3"
            case jobIds = "jobIds"
            case aPIVersion = "APIVersion"
            case street2 = "street2"
            case street1 = "street1"
            case company = "company"
            case country = "country"
        }
    }

    public struct GetStatusInput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "JobId", required: true, type: .string), 
            AWSShapeMember(label: "APIVersion", required: false, type: .string)
        ]
        public let jobId: String
        public let aPIVersion: String?

        public init(jobId: String, aPIVersion: String? = nil) {
            self.jobId = jobId
            self.aPIVersion = aPIVersion
        }

        private enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case aPIVersion = "APIVersion"
        }
    }

    public struct CreateJobOutput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "JobType", required: false, type: .enum), 
            AWSShapeMember(label: "ArtifactList", required: false, type: .list), 
            AWSShapeMember(label: "SignatureFileContents", required: false, type: .string), 
            AWSShapeMember(label: "WarningMessage", required: false, type: .string), 
            AWSShapeMember(label: "Signature", required: false, type: .string), 
            AWSShapeMember(label: "JobId", required: false, type: .string)
        ]
        public let jobType: JobType?
        public let artifactList: [Artifact]?
        public let signatureFileContents: String?
        public let warningMessage: String?
        public let signature: String?
        public let jobId: String?

        public init(jobType: JobType? = nil, artifactList: [Artifact]? = nil, signatureFileContents: String? = nil, warningMessage: String? = nil, signature: String? = nil, jobId: String? = nil) {
            self.jobType = jobType
            self.artifactList = artifactList
            self.signatureFileContents = signatureFileContents
            self.warningMessage = warningMessage
            self.signature = signature
            self.jobId = jobId
        }

        private enum CodingKeys: String, CodingKey {
            case jobType = "JobType"
            case artifactList = "ArtifactList"
            case signatureFileContents = "SignatureFileContents"
            case warningMessage = "WarningMessage"
            case signature = "Signature"
            case jobId = "JobId"
        }
    }

    public enum JobType: String, CustomStringConvertible, Codable {
        case `import` = "Import"
        case export = "Export"
        public var description: String { return self.rawValue }
    }

    public struct GetShippingLabelOutput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Warning", required: false, type: .string), 
            AWSShapeMember(label: "ShippingLabelURL", required: false, type: .string)
        ]
        public let warning: String?
        public let shippingLabelURL: String?

        public init(warning: String? = nil, shippingLabelURL: String? = nil) {
            self.warning = warning
            self.shippingLabelURL = shippingLabelURL
        }

        private enum CodingKeys: String, CodingKey {
            case warning = "Warning"
            case shippingLabelURL = "ShippingLabelURL"
        }
    }

    public struct UpdateJobOutput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Success", required: false, type: .boolean), 
            AWSShapeMember(label: "WarningMessage", required: false, type: .string), 
            AWSShapeMember(label: "ArtifactList", required: false, type: .list)
        ]
        public let success: Bool?
        public let warningMessage: String?
        public let artifactList: [Artifact]?

        public init(success: Bool? = nil, warningMessage: String? = nil, artifactList: [Artifact]? = nil) {
            self.success = success
            self.warningMessage = warningMessage
            self.artifactList = artifactList
        }

        private enum CodingKeys: String, CodingKey {
            case success = "Success"
            case warningMessage = "WarningMessage"
            case artifactList = "ArtifactList"
        }
    }

    public struct UpdateJobInput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "JobType", required: true, type: .enum), 
            AWSShapeMember(label: "APIVersion", required: false, type: .string), 
            AWSShapeMember(label: "Manifest", required: true, type: .string), 
            AWSShapeMember(label: "JobId", required: true, type: .string), 
            AWSShapeMember(label: "ValidateOnly", required: true, type: .boolean)
        ]
        public let jobType: JobType
        public let aPIVersion: String?
        public let manifest: String
        public let jobId: String
        public let validateOnly: Bool

        public init(jobType: JobType, aPIVersion: String? = nil, manifest: String, jobId: String, validateOnly: Bool) {
            self.jobType = jobType
            self.aPIVersion = aPIVersion
            self.manifest = manifest
            self.jobId = jobId
            self.validateOnly = validateOnly
        }

        private enum CodingKeys: String, CodingKey {
            case jobType = "JobType"
            case aPIVersion = "APIVersion"
            case manifest = "Manifest"
            case jobId = "JobId"
            case validateOnly = "ValidateOnly"
        }
    }

    public struct Job: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "JobType", required: false, type: .enum), 
            AWSShapeMember(label: "CreationDate", required: false, type: .timestamp), 
            AWSShapeMember(label: "JobId", required: false, type: .string), 
            AWSShapeMember(label: "IsCanceled", required: false, type: .boolean)
        ]
        public let jobType: JobType?
        public let creationDate: Double?
        public let jobId: String?
        public let isCanceled: Bool?

        public init(jobType: JobType? = nil, creationDate: Double? = nil, jobId: String? = nil, isCanceled: Bool? = nil) {
            self.jobType = jobType
            self.creationDate = creationDate
            self.jobId = jobId
            self.isCanceled = isCanceled
        }

        private enum CodingKeys: String, CodingKey {
            case jobType = "JobType"
            case creationDate = "CreationDate"
            case jobId = "JobId"
            case isCanceled = "IsCanceled"
        }
    }

    public struct GetStatusOutput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Carrier", required: false, type: .string), 
            AWSShapeMember(label: "ArtifactList", required: false, type: .list), 
            AWSShapeMember(label: "Signature", required: false, type: .string), 
            AWSShapeMember(label: "ProgressMessage", required: false, type: .string), 
            AWSShapeMember(label: "CreationDate", required: false, type: .timestamp), 
            AWSShapeMember(label: "CurrentManifest", required: false, type: .string), 
            AWSShapeMember(label: "TrackingNumber", required: false, type: .string), 
            AWSShapeMember(label: "ProgressCode", required: false, type: .string), 
            AWSShapeMember(label: "JobId", required: false, type: .string), 
            AWSShapeMember(label: "LogKey", required: false, type: .string), 
            AWSShapeMember(label: "SignatureFileContents", required: false, type: .string), 
            AWSShapeMember(label: "LocationMessage", required: false, type: .string), 
            AWSShapeMember(label: "JobType", required: false, type: .enum), 
            AWSShapeMember(label: "ErrorCount", required: false, type: .integer), 
            AWSShapeMember(label: "LogBucket", required: false, type: .string), 
            AWSShapeMember(label: "LocationCode", required: false, type: .string)
        ]
        public let carrier: String?
        public let artifactList: [Artifact]?
        public let signature: String?
        public let progressMessage: String?
        public let creationDate: Double?
        public let currentManifest: String?
        public let trackingNumber: String?
        public let progressCode: String?
        public let jobId: String?
        public let logKey: String?
        public let signatureFileContents: String?
        public let locationMessage: String?
        public let jobType: JobType?
        public let errorCount: Int32?
        public let logBucket: String?
        public let locationCode: String?

        public init(carrier: String? = nil, artifactList: [Artifact]? = nil, signature: String? = nil, progressMessage: String? = nil, creationDate: Double? = nil, currentManifest: String? = nil, trackingNumber: String? = nil, progressCode: String? = nil, jobId: String? = nil, logKey: String? = nil, signatureFileContents: String? = nil, locationMessage: String? = nil, jobType: JobType? = nil, errorCount: Int32? = nil, logBucket: String? = nil, locationCode: String? = nil) {
            self.carrier = carrier
            self.artifactList = artifactList
            self.signature = signature
            self.progressMessage = progressMessage
            self.creationDate = creationDate
            self.currentManifest = currentManifest
            self.trackingNumber = trackingNumber
            self.progressCode = progressCode
            self.jobId = jobId
            self.logKey = logKey
            self.signatureFileContents = signatureFileContents
            self.locationMessage = locationMessage
            self.jobType = jobType
            self.errorCount = errorCount
            self.logBucket = logBucket
            self.locationCode = locationCode
        }

        private enum CodingKeys: String, CodingKey {
            case carrier = "Carrier"
            case artifactList = "ArtifactList"
            case signature = "Signature"
            case progressMessage = "ProgressMessage"
            case creationDate = "CreationDate"
            case currentManifest = "CurrentManifest"
            case trackingNumber = "TrackingNumber"
            case progressCode = "ProgressCode"
            case jobId = "JobId"
            case logKey = "LogKey"
            case signatureFileContents = "SignatureFileContents"
            case locationMessage = "LocationMessage"
            case jobType = "JobType"
            case errorCount = "ErrorCount"
            case logBucket = "LogBucket"
            case locationCode = "LocationCode"
        }
    }

    public struct ListJobsOutput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Jobs", required: false, type: .list), 
            AWSShapeMember(label: "IsTruncated", required: false, type: .boolean)
        ]
        public let jobs: [Job]?
        public let isTruncated: Bool?

        public init(jobs: [Job]? = nil, isTruncated: Bool? = nil) {
            self.jobs = jobs
            self.isTruncated = isTruncated
        }

        private enum CodingKeys: String, CodingKey {
            case jobs = "Jobs"
            case isTruncated = "IsTruncated"
        }
    }

    public struct Artifact: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "URL", required: false, type: .string), 
            AWSShapeMember(label: "Description", required: false, type: .string)
        ]
        public let uRL: String?
        public let description: String?

        public init(uRL: String? = nil, description: String? = nil) {
            self.uRL = uRL
            self.description = description
        }

        private enum CodingKeys: String, CodingKey {
            case uRL = "URL"
            case description = "Description"
        }
    }

    public struct CancelJobInput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "JobId", required: true, type: .string), 
            AWSShapeMember(label: "APIVersion", required: false, type: .string)
        ]
        public let jobId: String
        public let aPIVersion: String?

        public init(jobId: String, aPIVersion: String? = nil) {
            self.jobId = jobId
            self.aPIVersion = aPIVersion
        }

        private enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case aPIVersion = "APIVersion"
        }
    }

    public struct CancelJobOutput: AWSShape {
        /// The key for the payload
        public static var members: [AWSShapeMember] = [
            AWSShapeMember(label: "Success", required: false, type: .boolean)
        ]
        public let success: Bool?

        public init(success: Bool? = nil) {
            self.success = success
        }

        private enum CodingKeys: String, CodingKey {
            case success = "Success"
        }
    }

}