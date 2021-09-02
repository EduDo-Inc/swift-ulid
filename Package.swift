// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "swift-ulid",
  products: [
    .library(
      name: "ULID",
      type: .static,
      targets: ["ULID"]
    )
  ],
  targets: [
    .target(name: "ULID"),
    .testTarget(
      name: "ULIDTests",
      dependencies: [
        .target(name: "ULID")
      ]
    ),
  ]
)
