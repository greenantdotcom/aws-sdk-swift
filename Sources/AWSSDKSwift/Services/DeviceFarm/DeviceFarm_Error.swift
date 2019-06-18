// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for DeviceFarm
public enum DeviceFarmErrorType: AWSErrorType {
    case argumentException(message: String?)
    case idempotencyException(message: String?)
    case invalidOperationException(message: String?)
    case limitExceededException(message: String?)
    case notEligibleException(message: String?)
    case notFoundException(message: String?)
    case serviceAccountException(message: String?)
    case tagOperationException(message: String?)
    case tagPolicyException(message: String?)
    case tooManyTagsException(message: String?)
}

extension DeviceFarmErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ArgumentException":
            self = .argumentException(message: message)
        case "IdempotencyException":
            self = .idempotencyException(message: message)
        case "InvalidOperationException":
            self = .invalidOperationException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "NotEligibleException":
            self = .notEligibleException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "ServiceAccountException":
            self = .serviceAccountException(message: message)
        case "TagOperationException":
            self = .tagOperationException(message: message)
        case "TagPolicyException":
            self = .tagPolicyException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        default:
            return nil
        }
    }
}