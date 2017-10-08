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

/// Error enum for Codecommit
public enum CodecommitError: AWSErrorType {
    case repositoryNameRequiredException(message: String?)
    case invalidRepositoryNameException(message: String?)
    case repositoryDoesNotExistException(message: String?)
    case branchNameRequiredException(message: String?)
    case branchNameExistsException(message: String?)
    case invalidBranchNameException(message: String?)
    case commitIdRequiredException(message: String?)
    case commitDoesNotExistException(message: String?)
    case invalidCommitIdException(message: String?)
    case encryptionIntegrityChecksFailedException(message: String?)
    case encryptionKeyAccessDeniedException(message: String?)
    case encryptionKeyDisabledException(message: String?)
    case encryptionKeyNotFoundException(message: String?)
    case encryptionKeyUnavailableException(message: String?)
    case invalidContinuationTokenException(message: String?)
    case invalidMaxResultsException(message: String?)
    case commitRequiredException(message: String?)
    case invalidCommitException(message: String?)
    case invalidPathException(message: String?)
    case pathDoesNotExistException(message: String?)
    case repositoryNameExistsException(message: String?)
    case invalidRepositoryDescriptionException(message: String?)
    case repositoryLimitExceededException(message: String?)
    case branchDoesNotExistException(message: String?)
    case invalidSortByException(message: String?)
    case invalidOrderException(message: String?)
    case repositoryTriggersListRequiredException(message: String?)
    case maximumRepositoryTriggersExceededException(message: String?)
    case invalidRepositoryTriggerNameException(message: String?)
    case invalidRepositoryTriggerDestinationArnException(message: String?)
    case invalidRepositoryTriggerRegionException(message: String?)
    case invalidRepositoryTriggerCustomDataException(message: String?)
    case maximumBranchesExceededException(message: String?)
    case invalidRepositoryTriggerBranchNameException(message: String?)
    case invalidRepositoryTriggerEventsException(message: String?)
    case repositoryTriggerNameRequiredException(message: String?)
    case repositoryTriggerDestinationArnRequiredException(message: String?)
    case repositoryTriggerBranchNameListRequiredException(message: String?)
    case repositoryTriggerEventsListRequiredException(message: String?)
    case commitIdDoesNotExistException(message: String?)
    case blobIdRequiredException(message: String?)
    case invalidBlobIdException(message: String?)
    case blobIdDoesNotExistException(message: String?)
    case fileTooLargeException(message: String?)
    case repositoryNamesRequiredException(message: String?)
    case maximumRepositoryNamesExceededException(message: String?)
}

extension CodecommitError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "RepositoryNameRequiredException":
            self = .repositoryNameRequiredException(message: message)
        case "InvalidRepositoryNameException":
            self = .invalidRepositoryNameException(message: message)
        case "RepositoryDoesNotExistException":
            self = .repositoryDoesNotExistException(message: message)
        case "BranchNameRequiredException":
            self = .branchNameRequiredException(message: message)
        case "BranchNameExistsException":
            self = .branchNameExistsException(message: message)
        case "InvalidBranchNameException":
            self = .invalidBranchNameException(message: message)
        case "CommitIdRequiredException":
            self = .commitIdRequiredException(message: message)
        case "CommitDoesNotExistException":
            self = .commitDoesNotExistException(message: message)
        case "InvalidCommitIdException":
            self = .invalidCommitIdException(message: message)
        case "EncryptionIntegrityChecksFailedException":
            self = .encryptionIntegrityChecksFailedException(message: message)
        case "EncryptionKeyAccessDeniedException":
            self = .encryptionKeyAccessDeniedException(message: message)
        case "EncryptionKeyDisabledException":
            self = .encryptionKeyDisabledException(message: message)
        case "EncryptionKeyNotFoundException":
            self = .encryptionKeyNotFoundException(message: message)
        case "EncryptionKeyUnavailableException":
            self = .encryptionKeyUnavailableException(message: message)
        case "InvalidContinuationTokenException":
            self = .invalidContinuationTokenException(message: message)
        case "InvalidMaxResultsException":
            self = .invalidMaxResultsException(message: message)
        case "CommitRequiredException":
            self = .commitRequiredException(message: message)
        case "InvalidCommitException":
            self = .invalidCommitException(message: message)
        case "InvalidPathException":
            self = .invalidPathException(message: message)
        case "PathDoesNotExistException":
            self = .pathDoesNotExistException(message: message)
        case "RepositoryNameExistsException":
            self = .repositoryNameExistsException(message: message)
        case "InvalidRepositoryDescriptionException":
            self = .invalidRepositoryDescriptionException(message: message)
        case "RepositoryLimitExceededException":
            self = .repositoryLimitExceededException(message: message)
        case "BranchDoesNotExistException":
            self = .branchDoesNotExistException(message: message)
        case "InvalidSortByException":
            self = .invalidSortByException(message: message)
        case "InvalidOrderException":
            self = .invalidOrderException(message: message)
        case "RepositoryTriggersListRequiredException":
            self = .repositoryTriggersListRequiredException(message: message)
        case "MaximumRepositoryTriggersExceededException":
            self = .maximumRepositoryTriggersExceededException(message: message)
        case "InvalidRepositoryTriggerNameException":
            self = .invalidRepositoryTriggerNameException(message: message)
        case "InvalidRepositoryTriggerDestinationArnException":
            self = .invalidRepositoryTriggerDestinationArnException(message: message)
        case "InvalidRepositoryTriggerRegionException":
            self = .invalidRepositoryTriggerRegionException(message: message)
        case "InvalidRepositoryTriggerCustomDataException":
            self = .invalidRepositoryTriggerCustomDataException(message: message)
        case "MaximumBranchesExceededException":
            self = .maximumBranchesExceededException(message: message)
        case "InvalidRepositoryTriggerBranchNameException":
            self = .invalidRepositoryTriggerBranchNameException(message: message)
        case "InvalidRepositoryTriggerEventsException":
            self = .invalidRepositoryTriggerEventsException(message: message)
        case "RepositoryTriggerNameRequiredException":
            self = .repositoryTriggerNameRequiredException(message: message)
        case "RepositoryTriggerDestinationArnRequiredException":
            self = .repositoryTriggerDestinationArnRequiredException(message: message)
        case "RepositoryTriggerBranchNameListRequiredException":
            self = .repositoryTriggerBranchNameListRequiredException(message: message)
        case "RepositoryTriggerEventsListRequiredException":
            self = .repositoryTriggerEventsListRequiredException(message: message)
        case "CommitIdDoesNotExistException":
            self = .commitIdDoesNotExistException(message: message)
        case "BlobIdRequiredException":
            self = .blobIdRequiredException(message: message)
        case "InvalidBlobIdException":
            self = .invalidBlobIdException(message: message)
        case "BlobIdDoesNotExistException":
            self = .blobIdDoesNotExistException(message: message)
        case "FileTooLargeException":
            self = .fileTooLargeException(message: message)
        case "RepositoryNamesRequiredException":
            self = .repositoryNamesRequiredException(message: message)
        case "MaximumRepositoryNamesExceededException":
            self = .maximumRepositoryNamesExceededException(message: message)
        default:
            return nil
        }
    }
}