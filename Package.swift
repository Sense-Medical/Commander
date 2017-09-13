// swift-tools-version:4.0

import Foundation
import PackageDescription

let package = Package(
  name: "Commander",
  products: [
    .library(name: "Commander", targets: ["Commander"])
  ],
  dependencies: [
    // https://github.com/apple/swift-package-manager/pull/597
    .package(url: "https://github.com/Sense-Medical/Spectre.git", .branch("cortex")),
  ],
  targets: [
    .target(name: "Commander", path: "Sources"),
    .testTarget(name: "CommanderTests", dependencies: ["Commander", "Spectre"], path: "Tests/CommanderTests")
  ]
)
