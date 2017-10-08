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

/// Error enum for Apigateway
public enum ApigatewayError: AWSErrorType {
    case unauthorizedException(message: String?)
    case badRequestException(message: String?)
    case conflictException(message: String?)
    case notFoundException(message: String?)
    case tooManyRequestsException(message: String?)
    case serviceUnavailableException(message: String?)
    case limitExceededException(message: String?)
}

extension ApigatewayError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        default:
            return nil
        }
    }
}