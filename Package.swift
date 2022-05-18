// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Data",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "Data",
            targets: ["Data"]),
    ],
    dependencies: [
        .package(name: "Common", path: "https://github.com/w9i/Common"),
        .package(name: "Domain", path: "https://github.com/w9i/Domain"),
        .package(name: "Networking", path: "https://github.com/w9i/Networking")
    ],
    targets: [
        .target(
            name: "Data",
            dependencies: ["Common", "Domain", "Networking"]),
        .testTarget(
            name: "DataTests",
            dependencies: ["Data"]),
    ]
)
