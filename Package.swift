// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Wheel",
    products: [
        .library(name: "WheelUI",     targets: ["WheelUI"]),
        .library(name: "WheelUIAnimation",  targets: ["WheelUIAnimation"]),
    ],
    dependencies: [
        .package(name: "Lottie", url: "https://github.com/airbnb/lottie-ios.git", from: "3.2.1")
    ],
    targets: [
        .target(name: "WheelUI", dependencies: [],
                path: "WheelUI/Sources/"),
        .testTarget(name: "WheelUITests", dependencies: ["WheelUI"],
                    path: "WheelUI/Tests/WheelUITests"),

        .target(name: "WheelUIAnimation", dependencies: ["Lottie"],
                path: "WheelUIAnimation/Sources/"),
        .testTarget(name: "WheelUIAnimationTests", dependencies: ["WheelUIAnimation"],
                    path: "WheelUIAnimation/Tests/WheelUIAnimationTests"),
    ]
)

