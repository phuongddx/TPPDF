// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "TPPDF",
    platforms: [
        .iOS(.v15),
        .macOS(.v10_15),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "TPPDF", targets: ["TPPDF"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick", exact: Version("3.1.2")),
        .package(url: "https://github.com/Quick/Nimble", exact: Version("9.2.1")),
    ],
    targets: [
        .target(name: "TPPDF", path: "Source"),
        .testTarget(name: "TPPDFTests", dependencies: [
            "TPPDF",
            "Quick",
            "Nimble",
        ], resources: [
            .copy("resources/sample.pdf"),
        ]),
        .testTarget(name: "TPPDFIntegrationTests", dependencies: [
            "TPPDF",
            "Quick",
            "Nimble",
        ], resources: [
            .copy("resources/50-pages.pdf"),
        ]),
    ]
)
