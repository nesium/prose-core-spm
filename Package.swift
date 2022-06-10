// swift-tools-version:5.6
import PackageDescription

let package = Package(
  name: "ProseCoreClientFFI",
  platforms: [.macOS(.v12), .iOS(.v14)],
  products: [
    .library(name: "ProseCoreClientFFI", targets: ["ProseCoreClientFFI"]),
  ],
  targets: [
    .target(
      name: "ProseCoreClientFFI",
      dependencies: ["_ProseCoreClientFFI"],
      linkerSettings: [.linkedLibrary("xml2"), .linkedLibrary("expat"), .linkedLibrary("resolv")]
    ),
    .binaryTarget(
      name: "_ProseCoreClientFFI",
      url: "https://github.com/nesium/prose-core-spm/releases/download/0.1.0/_ProseCoreClientFFI.xcframework.zip",
      checksum: "702ad6c4d300b35694ed7309d6b26082ef9a5a2c30616b7525c19acbdb35ce84"
    ),
  ]
)

