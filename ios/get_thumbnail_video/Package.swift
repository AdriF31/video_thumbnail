// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "get_thumbnail_video",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(name: "get-thumbnail-video", targets: ["get_thumbnail_video"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/SDWebImage/libwebp-Xcode.git", from: "1.5.0")
    ],
    targets: [
        .target(
            name: "get_thumbnail_video",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "libwebp", package: "libwebp-Xcode")
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy")
            ],
            cSettings: [
                .headerSearchPath("include/get_thumbnail_video")
            ]
        )
    ]
)
