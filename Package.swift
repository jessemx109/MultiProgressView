// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "MultiProgressView",
  platforms: [
    .iOS(.v9)
  ],
  products: [
    .library(
      name: "MultiProgressView",
      targets: ["MultiProgressView"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Quick/Quick.git", .upToNextMajor(from: "3.0.0")),
    .package(url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "9.0.0"))
  ],
  targets: [
    .target(
      name: "MultiProgressView",
      dependencies: []),
    .testTarget(
      name: "MultiProgressViewTests",
      dependencies: [
        "MultiProgressView",
        "Quick",
        "Nimble"
      ]
    )
  ]
)
