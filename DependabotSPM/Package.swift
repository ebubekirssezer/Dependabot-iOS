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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "10.3.0"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", exact: "10.21.0"),
        .package(url: "https://github.com/googleanalytics/google-tag-manager-ios-sdk.git", exact: "7.4.3"),
        .package(url: "https://github.com/optimizely/swift-sdk.git", exact: "4.0.0"),
        .package(url: "https://github.com/auth0/JWTDecode.swift.git", exact: "3.1.0"),
        .package(url: "https://github.com/airbnb/MagazineLayout.git", exact: "1.6.11"),
        .package(url: "https://github.com/jverdi/JVFloatLabeledTextField.git", exact: "1.2.5"),
        .package(url: "https://github.com/ContentSquare/CS_iOS_SDK.git", exact: "4.26.0"),
        .package(url: "https://github.com/UrbanCompass/Mussel.git", exact: "1.0.0"),
        .package(url: "https://github.com/krzysztofzablocki/Inject.git", exact: "1.2.4"),
        .package(url: "https://github.com/apple/swift-async-algorithms.git", exact: "1.0.0")
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
                .product(name: "YouTubeiOSPlayerHelper", package: "youtube-ios-player-helper"),
                .product(name: "Apollo", package: "apollo-ios"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                .product(name: "Nuke", package: "Nuke"),
                .product(name: "AppAuth", package: "AppAuth-iOS"),
                .product(name: "SendbirdChatSDK", package: "sendbird-chat-sdk-ios"),
                .product(name: "AcknowList", package: "AcknowList"),
                .product(name: "DeviceKit", package: "DeviceKit"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "GoogleTagManager", package: "google-tag-manager-ios-sdk"),
                .product(name: "Optimizely", package: "swift-sdk"),
                .product(name: "JWTDecode", package: "JWTDecode.swift"),
                .product(name: "MagazineLayout", package: "MagazineLayout"),
                .product(name: "JVFloatLabeledTextField", package: "JVFloatLabeledTextField"),
                .product(name: "Mussel", package: "Mussel"),
                .product(name: "Inject", package: "Inject"),
                .product(name: "AsyncAlgorithms", package: "swift-async-algorithms"),
                .product(name: "ContentsquareModule", package: "CS_iOS_SDK"),
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseInAppMessaging-Beta", package: "firebase-ios-sdk"),
                .product(name: "FirebaseInstallations", package: "firebase-ios-sdk"),
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
