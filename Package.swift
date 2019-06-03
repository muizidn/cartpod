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
        .package(url: "https://github.com/Carthage/Commandant", from: "0.15.0"),
        .package(url: "https://github.com/tuist/xcodeproj", from: "6.7.0"),
        .package(url: "https://github.com/pakLebah/ANSITerminal", from: "0.0.3"),
        .package(url: "https://github.com/thoughtbot/Curry", from: "4.0.2"),
        .package(url: "https://github.com/apple/swift-package-manager.git", .revision("swift-DEVELOPMENT-SNAPSHOT-2019-03-04-a")),
        .package(url: "https://github.com/Quick/Quick", from: "2.1.0"),
        .package(url: "https://github.com/Quick/Nimble", from: "8.0.0")
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CartPodTool",
            dependencies: ["CartPodCore", "Commandant", "Curry", "ANSITerminal"]),
        .target(
            name: "CartPodCore",
            dependencies: ["xcodeproj", "SPMUtility"]),
        .testTarget(
            name: "CartPodTests",
            dependencies: ["CartPodCore", "Quick", "Nimble"])
    ]
)
