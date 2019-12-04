// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "{{name}}",
  products: [
      .library(name: "{{name}}", targets: ["{{name}}"]),
  ],
  dependencies: [
      .package(url: "https://github.com/swift-aws/aws-sdk-swift-core.git", .upToNextMinor(from: "{{version}}"))
  ],
  targets: [
      .target(name: "{{name}}", dependencies: ["AWSSDKSwiftCore"]),
  ]
)
