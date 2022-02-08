import PackageDescription

let package = Package(
    name: "Wheel",
    products: [
        .library(name: "WheelUI",     targets: ["WheelUI"]),
        .library(name: "WheelUIAnimation",  targets: ["WheelUIAnimation]),
    ],
    dependencies: [
        // SPM does not support mixing of branch-based and unversioned dependencies :(
        // .package(path: "someComponent"),
        // .package(path: "anotherComponent"),
    ],
    targets: [
        .target(name: "WheelUI", dependencies: [],
                path: "WheelUI/Sources/"),
        .testTarget(name: "WheelUITests", dependencies: ["WheelUI"],
                    path: "WheelUI/Tests/WheelUITests"),

        .target(name: "WheelUIAnimation", dependencies: [],
                path: "WheelUIAnimation/Sources/"),
        .testTarget(name: "WheelUIAnimationTests", dependencies: ["WheelUIAnimation"],
                    path: "WheelUIAnimation/Tests/WheelUIAnimationTests"),
    ]
)

