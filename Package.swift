// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Wheel",
    products: [
        .library(name: "WheelUI", targets: ["WheelUI"]),
        .library(name: "WheelUIAnimation", targets: ["WheelUIAnimation"])
    ],
    targets: [
        .target(
            name: "Wheel",
            dependencies: ["WheelUI", "WheelUIAnimation"]),
    ]
)
