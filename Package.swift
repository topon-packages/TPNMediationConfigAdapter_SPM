// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNMediationConfigAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TPNMediationConfigAdapter",
            targets: ["TPNMediationConfigAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.60")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkConfigAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkConfigAdapter/10.0.0/AnyThinkConfigAdapter-10.0.0.zip",
            checksum: "20698b714e76e1a733efcc1fd73852380d6a814ee2f3de0a4997a7f12c43caf5"
        ),
        .target(
            name: "TPNMediationConfigAdapterTarget",
            dependencies: [
                "AnyThinkConfigAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM")
            ],
            path: "Sources/TPNMediationConfigAdapterTarget"
        )
    ]
)