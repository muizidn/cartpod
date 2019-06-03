// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CartPod",
    products: [
        .executable(
            name: "cartpod",
            targets: ["CartPodTool"]
        ),
        .library(
            name: "CartPodCore",
            targets: ["CartPodCore"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // https://github.com/Carthage/Carthage/issues/2752#issuecomment-479780573
        .package(url: "https://github.com/Carthage/Carthage", .revision("c8ac06e106b6b61f907918bfb2b7a5c432de4678")),
        .package(url: "https://github.com/Carthage/Commandant", from: "0.15.0"),
        .package(url: "https://github.com/tuist/xcodeproj", .exact("4.3.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CartPodTool",
            dependencies: ["CartPodCore"]),
        .target(
            name: "CartPodCore",
            dependencies: ["CarthageKit", "Commandant", "xcproj"]),
        .testTarget(
            name: "CartPodTests",
            dependencies: ["CartPodCore"]),
    ]
)
