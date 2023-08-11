// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "URKit",
    platforms: [
        .macOS(.v11),
        .iOS(.v14),
        .macCatalyst(.v14)
    ],
    products: [
        .library(
            name: "URKit",
            targets: ["URKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Arculus-Holdings-L-L-C/Arculus-BCSwiftDCBOR.git", from: "0.2.0"),
        .package(url: "https://github.com/BlockchainCommons/BCSwiftCrypto.git", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "URKit",
            dependencies: [
                .product(name: "DCBOR", package: "BCSwiftDCBOR"),
                .product(name: "BCCrypto", package: "BCSwiftCrypto"),
            ]
        ),
        .testTarget(
            name: "URKitTests",
            dependencies: [
                "URKit",
            ]
        ),
    ]
)
