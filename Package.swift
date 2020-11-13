// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "NSObject-Rx",
    products: [
        .library(name: "NSObject-Rx", targets: ["NSObject-Rx"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", from: "5.1.1"),
    ],
    targets: [
        .target(
            name: "NSObject-Rx",
            dependencies: ["RxSwift"],
            path: ".",
            sources: ["NSObject+Rx.swift", "HasDisposeBag.swift"]
        ),
    ]
)
