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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkConfigAdapter/6.5.91/AnyThinkConfigAdapter-6.5.91.zip",
            checksum: "c6713e79a3e83f2c09719191bc1526ef6c2aeb82ece90b9c1a7e5374d7b1de8f"
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