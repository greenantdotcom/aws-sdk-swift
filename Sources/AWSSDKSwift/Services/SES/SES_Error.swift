// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for SES
public enum SESErrorType: AWSErrorType {
    case accountSendingPausedException(message: String?)
    case alreadyExistsException(message: String?)
    case cannotDeleteException(message: String?)
    case configurationSetAlreadyExistsException(message: String?)
    case configurationSetDoesNotExistException(message: String?)
    case configurationSetSendingPausedException(message: String?)
    case customVerificationEmailInvalidContentException(message: String?)
    case customVerificationEmailTemplateAlreadyExistsException(message: String?)
    case customVerificationEmailTemplateDoesNotExistException(message: String?)
    case eventDestinationAlreadyExistsException(message: String?)
    case eventDestinationDoesNotExistException(message: String?)
    case fromEmailAddressNotVerifiedException(message: String?)
    case invalidCloudWatchDestinationException(message: String?)
    case invalidConfigurationSetException(message: String?)
    case invalidFirehoseDestinationException(message: String?)
    case invalidLambdaFunctionException(message: String?)
    case invalidPolicyException(message: String?)
    case invalidRenderingParameterException(message: String?)
    case invalidS3ConfigurationException(message: String?)
    case invalidSNSDestinationException(message: String?)
    case invalidSnsTopicException(message: String?)
    case invalidTemplateException(message: String?)
    case invalidTrackingOptionsException(message: String?)
    case limitExceededException(message: String?)
    case mailFromDomainNotVerifiedException(message: String?)
    case messageRejected(message: String?)
    case missingRenderingAttributeException(message: String?)
    case productionAccessNotGrantedException(message: String?)
    case ruleDoesNotExistException(message: String?)
    case ruleSetDoesNotExistException(message: String?)
    case templateDoesNotExistException(message: String?)
    case trackingOptionsAlreadyExistsException(message: String?)
    case trackingOptionsDoesNotExistException(message: String?)
}

extension SESErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccountSendingPausedException":
            self = .accountSendingPausedException(message: message)
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "CannotDeleteException":
            self = .cannotDeleteException(message: message)
        case "ConfigurationSetAlreadyExistsException":
            self = .configurationSetAlreadyExistsException(message: message)
        case "ConfigurationSetDoesNotExistException":
            self = .configurationSetDoesNotExistException(message: message)
        case "ConfigurationSetSendingPausedException":
            self = .configurationSetSendingPausedException(message: message)
        case "CustomVerificationEmailInvalidContentException":
            self = .customVerificationEmailInvalidContentException(message: message)
        case "CustomVerificationEmailTemplateAlreadyExistsException":
            self = .customVerificationEmailTemplateAlreadyExistsException(message: message)
        case "CustomVerificationEmailTemplateDoesNotExistException":
            self = .customVerificationEmailTemplateDoesNotExistException(message: message)
        case "EventDestinationAlreadyExistsException":
            self = .eventDestinationAlreadyExistsException(message: message)
        case "EventDestinationDoesNotExistException":
            self = .eventDestinationDoesNotExistException(message: message)
        case "FromEmailAddressNotVerifiedException":
            self = .fromEmailAddressNotVerifiedException(message: message)
        case "InvalidCloudWatchDestinationException":
            self = .invalidCloudWatchDestinationException(message: message)
        case "InvalidConfigurationSetException":
            self = .invalidConfigurationSetException(message: message)
        case "InvalidFirehoseDestinationException":
            self = .invalidFirehoseDestinationException(message: message)
        case "InvalidLambdaFunctionException":
            self = .invalidLambdaFunctionException(message: message)
        case "InvalidPolicyException":
            self = .invalidPolicyException(message: message)
        case "InvalidRenderingParameterException":
            self = .invalidRenderingParameterException(message: message)
        case "InvalidS3ConfigurationException":
            self = .invalidS3ConfigurationException(message: message)
        case "InvalidSNSDestinationException":
            self = .invalidSNSDestinationException(message: message)
        case "InvalidSnsTopicException":
            self = .invalidSnsTopicException(message: message)
        case "InvalidTemplateException":
            self = .invalidTemplateException(message: message)
        case "InvalidTrackingOptionsException":
            self = .invalidTrackingOptionsException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "MailFromDomainNotVerifiedException":
            self = .mailFromDomainNotVerifiedException(message: message)
        case "MessageRejected":
            self = .messageRejected(message: message)
        case "MissingRenderingAttributeException":
            self = .missingRenderingAttributeException(message: message)
        case "ProductionAccessNotGrantedException":
            self = .productionAccessNotGrantedException(message: message)
        case "RuleDoesNotExistException":
            self = .ruleDoesNotExistException(message: message)
        case "RuleSetDoesNotExistException":
            self = .ruleSetDoesNotExistException(message: message)
        case "TemplateDoesNotExistException":
            self = .templateDoesNotExistException(message: message)
        case "TrackingOptionsAlreadyExistsException":
            self = .trackingOptionsAlreadyExistsException(message: message)
        case "TrackingOptionsDoesNotExistException":
            self = .trackingOptionsDoesNotExistException(message: message)
        default:
            return nil
        }
    }
}