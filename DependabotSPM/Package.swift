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
            targets: ["DependabotSPM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", exact: "5.0.1"),
        .package(url: "https://github.com/apollographql/apollo-ios", exact: "0.53.0"),
        .package(url: "https://github.com/kean/Nuke.git", exact: "10.4.1"),
        .package(url: "https://github.com/sendbird/sendbird-chat-sdk-ios", exact: "4.12.3"),
        .package(url: "https://github.com/hmlongco/Factory.git", exact: "2.3.1"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", exact: "4.9.1"),
        .package(url: "https://github.com/krzysztofzablocki/Inject.git", exact: "1.3.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DependabotSPM",
            dependencies: [
                .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                .product(name: "Apollo", package: "apollo-ios"),
                .product(name: "Nuke", package: "Nuke"),
                .product(name: "SendbirdChatSDK", package: "sendbird-chat-sdk-ios"),
                .product(name: "Factory", package: "Factory"),
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "Inject", package: "Inject")
            ]
        )
    ]
)
