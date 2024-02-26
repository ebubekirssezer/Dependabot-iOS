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
        .package(url: "https://github.com/Tealium/tealium-swift.git", exact: "2.4.6"),
        .package(url: "https://github.com/youtube/youtube-ios-player-helper.git", exact: "1.0.4"),
        .package(url: "https://github.com/apollographql/apollo-ios.git", exact: "1.8.0"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", exact: "5.0.1"),
        .package(url: "https://github.com/kean/Nuke.git", exact: "10.4.1"),
        .package(url: "https://github.com/openid/AppAuth-iOS.git", exact: "1.6.2"),
        .package(url: "https://github.com/sendbird/sendbird-chat-sdk-ios.git", exact: "4.12.3"),
        .package(url: "https://github.com/vtourraine/AcknowList.git", exact: "3.0.1"),
        .package(url: "https://github.com/devicekit/DeviceKit.git", exact: "5.0.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "10.3.0")
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
                .product(name: "TealiumTagManagement", package: "tealium-swift"),
                .product(name: "YouTubeiOSPlayerHelper", package: "youtube-ios-player-helper"),
                .product(name: "Apollo", package: "apollo-ios"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                .product(name: "Nuke", package: "Nuke"),
                .product(name: "AppAuth", package: "AppAuth-iOS"),
                .product(name: "SendbirdChatSDK", package: "sendbird-chat-sdk-ios"),
                .product(name: "AcknowList", package: "AcknowList"),
                .product(name: "DeviceKit", package: "DeviceKit"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ]
        ),
        .target(
            name: "DependabotSPMCore",
            dependencies: [
                .product(name: "Factory", package: "Factory")
            ])
    ]
)
