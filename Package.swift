// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "ChessboardKit",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(
            name: "ChessboardKit",
            targets: ["ChessboardKit"]),
    ],
    dependencies: [.package(url: "https://github.com/aperechnev/ChessKit", from: "1.3.7")],
    targets: [
        .target(name: "ChessboardKit",
                dependencies: ["ChessKit"],
                resources: [
                    .process("Assets/Pieces/uscf")
                ])
    ],
    swiftLanguageModes: [.v5, .v6]
)
