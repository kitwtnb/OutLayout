// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "OutLayout",
    platforms: [
        .iOS(.v12),
        .macOS(.v11),
    ],
    products: [
        .library(name: "OutLayout", targets: ["OutLayout"]),
    ],
    targets: [
        .target(name: "OutLayout"),
        .testTarget(name: "OutLayoutTests", dependencies: ["OutLayout"]),
    ]
)
