// swift-tools-version:4.1
import PackageDescription

let package = Package(
  name: "app",
  dependencies: [
    .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
  ],
  targets: [
    .target(name: "Run", dependencies: ["Vapor"]),
  ]
)
