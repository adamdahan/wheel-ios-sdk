// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Wheel",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "WheelUI", targets: ["WheelUI"]),
        .library(name: "WheelUIAnimation", targets: ["WheelUIAnimation"])
    ],
    dependencies: [
       //
    ],
    targets: [
        .target(
            name: "Wheel",
            dependencies: ["WheelUI", "WheelUIAnimation"]),
    ]
)
