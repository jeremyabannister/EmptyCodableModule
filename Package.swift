// swift-tools-version: 5.6

///
import PackageDescription

///
let package = Package(
    name: "EmptyCodableModule",
    products: [
        
        ///
        .library(
            name: "EmptyCodableModule",
            targets: ["EmptyCodableModule"]
        ),
    ],
    dependencies: [],
    targets: [
        
        ///
        .target(
            name: "EmptyCodableModule",
            dependencies: []
        ),
        
        ///
        .testTarget(
            name: "EmptyCodableModule-tests",
            dependencies: ["EmptyCodableModule"]
        ),
    ]
)
