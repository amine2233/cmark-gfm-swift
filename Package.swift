// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cmark-gfm-swift",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "cmark-gfm-swift",
            targets: ["cmark-gfm-swift"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "cmark_gfm"),
        .target(
            name: "cmark-gfm-swift",
            dependencies: [.target(name: "cmark_gfm")]
        ),
        .testTarget(
            name: "cmark-gfm-swiftTests",
            dependencies: ["cmark-gfm-swift"]
        ),
    ]
)
