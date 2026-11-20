// swift-tools-version: 5.6
// Copyright © 2026 Yodo1 Games. All rights reserved.

import PackageDescription

let package = Package(
    name: "Yodo1MasMediationAdMob",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "Yodo1MasMediationAdMob", targets: ["Yodo1MasMediationAdMobTarget"]),
        .library(name: "Yodo1MasMediationAdMob-AppLovinMediationGoogleAdapter", targets: ["Yodo1MasMediationAdMob-AppLovinMediationGoogleAdapterTarget"]),
        .library(name: "Yodo1MasMediationAdMob-AppLovinMediationGoogleAdManagerAdapter", targets: ["Yodo1MasMediationAdMob-AppLovinMediationGoogleAdManagerAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.4"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.11.0"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Core.git", exact: "5.0.0-beta.5"),
    ],
    targets: [
        // ==================== Yodo1MasMediationAdMob ====================
        .target(
            name: "Yodo1MasMediationAdMobTarget",
            dependencies: [
                .target(name: "Yodo1MasMediationAdMob"),
                .product(name: "Yodo1MasCore", package: "MAS-Swift-Package-Core"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "Sources/Yodo1MasMediationAdMobTarget",
            resources: [.copy("Yodo1MasAdMob.plist"), .copy("Yodo1MasAdMobNativeMediumTemplateView.nib"), .copy("Yodo1MasAdMobNativeSmallTemplateView.nib")]
        ),
        .binaryTarget(
            name: "Yodo1MasMediationAdMob",
            url: "https://mas-artifacts.yodo1.com/5.0.0-beta.5/iOS/Pre/spm/Yodo1MasMediationAdMob/Yodo1MasMediationAdMob-5.0.0-beta.5.zip",
            checksum: "0c407f84e1b273f2204c3028d3f82841caf2e2ed501de5d0c99b8232cfc2fe90"
        ),
        // ==================== Yodo1MasMediationAdMob-AppLovinMediationGoogleAdapter ====================
        .target(
            name: "Yodo1MasMediationAdMob-AppLovinMediationGoogleAdapterTarget",
            dependencies: [
                .target(name: "Yodo1MasMediationAdMobTarget"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .target(name: "AppLovinMediationGoogleAdapter"),
            ],
            path: "Sources/Yodo1MasMediationAdMob-AppLovinMediationGoogleAdapterTarget"
        ),
        .binaryTarget(
            name: "AppLovinMediationGoogleAdapter",
            url: "https://mas-artifacts.yodo1.com/5.0.0-beta.5/iOS/Pre/spm/Yodo1MasMediationAdMob/AppLovinMediationGoogleAdapter-5.0.0-beta.5.zip",
            checksum: "82ce173adbdf4f99dfa6788463141f2226c71747750579dbda5270c720034c85"
        ),
        // ==================== Yodo1MasMediationAdMob-AppLovinMediationGoogleAdManagerAdapter ====================
        .target(
            name: "Yodo1MasMediationAdMob-AppLovinMediationGoogleAdManagerAdapterTarget",
            dependencies: [
                .target(name: "Yodo1MasMediationAdMobTarget"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .target(name: "AppLovinMediationGoogleAdManagerAdapter"),
            ],
            path: "Sources/Yodo1MasMediationAdMob-AppLovinMediationGoogleAdManagerAdapterTarget"
        ),
        .binaryTarget(
            name: "AppLovinMediationGoogleAdManagerAdapter",
            url: "https://mas-artifacts.yodo1.com/5.0.0-beta.5/iOS/Pre/spm/Yodo1MasMediationAdMob/AppLovinMediationGoogleAdManagerAdapter-5.0.0-beta.5.zip",
            checksum: "7e2e8771bebb58d09b1f672acee3b25329344b5c094dc4cadb0b4d20cb696eb2"
        ),
    ]
)
