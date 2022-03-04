// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SwiftyJamfPro",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "SwiftyJamfPro",
            targets: ["SwiftyJamfPro"]),
    ],
    targets: [
        .target(
            name: "SwiftyJamfPro"
        ),
        .testTarget(
            name: "SwiftyJamfProTests",
            dependencies: ["SwiftyJamfPro"],
            resources: [.process("Resources")]
        )
    ]
)
