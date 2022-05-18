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
        .package(name: "Common", url: "https://github.com/w9i/Common", from: "1.0.0"),
        .package(name: "Domain", url: "https://github.com/w9i/Domain", from: "1.0.0"),
        .package(name: "Networking", url: "https://github.com/w9i/Networking", from: "1.0.0")
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
