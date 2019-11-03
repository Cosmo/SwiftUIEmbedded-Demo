// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIEmbedded-Demo",
    platforms: [
        .macOS(.v10_15), .iOS(.v13)
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Cosmo/OpenSwiftUI.git", .branch("master")),
        .package(url: "https://github.com/Cosmo/Pixels.git", .branch("master")),
        .package(url: "https://github.com/Cosmo/SwiftUIEmbedded.git", .branch("master")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftUIEmbedded-Demo",
            dependencies: ["OpenSwiftUI", "Pixels", "SwiftUIEmbedded"]),
        .testTarget(
            name: "SwiftUIEmbedded-DemoTests",
            dependencies: ["SwiftUIEmbedded-Demo"]),
    ]
)
