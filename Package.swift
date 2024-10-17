// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-testing-main-bug",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "swift-testing-main-bug",
            targets: ["swift-testing-main-bug"]),
    ],
    dependencies: [
      .package(url: "https://github.com/pointfreeco/swift-snapshot-testing", from: "1.17.4")
    ],
    targets: [

        .target(
            name: "swift-testing-main-bug"),
        .testTarget(
            name: "swift-testing-main-bugTests",
            dependencies: [
              "swift-testing-main-bug",
              .product(name: "SnapshotTesting", package: "swift-snapshot-testing")
            ]
        ),
    ]
)
