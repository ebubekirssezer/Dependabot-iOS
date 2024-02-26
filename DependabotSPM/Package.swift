// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DependabotSPM",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DependabotSPM",
            targets: ["DependabotSPM"])
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory.git", exact: "2.3.1"),
        .package(url: "https://github.com/sendbird/sendbird-uikit-ios-spm.git", exact: "3.10.0"),
        .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", exact: "1.11.0"),
        .package(url: "https://github.com/adjust/ios_sdk.git", exact: "4.37.0"),
        .package(url: "https://github.com/okta/okta-devices-swift.git", exact: "1.1.2"),
        .package(url: "https://github.com/marmelroy/PhoneNumberKit.git", exact: "3.5.9"),
        .package(url: "https://github.com/joeldev/JLRoutes.git", exact: "2.1.1"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", exact: "4.9.1"),
        .package(url: "https://github.com/Tealium/tealium-swift.git", exact: "2.12.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DependabotSPM",
            dependencies: [
                .product(name: "Factory", package: "Factory"),
                .product(name: "SendbirdUIKit", package: "sendbird-uikit-ios-spm"),
                .product(name: "Adjust", package: "ios_sdk"),
                .product(name: "Criteo", package: "ios_sdk"),
                .product(name: "DeviceAuthenticator", package: "okta-devices-swift"),
                .product(name: "PhoneNumberKit", package: "PhoneNumberKit"),
                .product(name: "JLRoutes", package: "JLRoutes"),
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "TealiumCore", package: "tealium-swift"),
                .product(name: "TealiumTagManagement", package: "tealium-swift")
            ]
        ),
        .target(
            name: "DependabotSPMCore",
            dependencies: [
                .product(name: "Factory", package: "Factory")
            ])
    ]
)
