// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "FolioReaderKit",
	    platforms: [.iOS(.v14)],

	
	 products: [
        .library(
            name: "FolioReaderKit",
            targets: ["FolioReaderKit" ]),
 
    ],
	
	dependencies: [
		.Package(url: "https://github.com/ZipArchive/ZipArchive.git", majorVersion: 2, minor: 1),
		.Package(url: "https://github.com/cxa/MenuItemKit.git", majorVersion: 3, minor: 0),
		.Package(url: "https://github.com/zoonooz/ZFDragableModalTransition.git", majorVersion: 0, minor: 6),
		.Package(url: "https://github.com/tadija/AEXML.git", majorVersion: 4, minor: 2),
		.Package(url: "https://github.com/ArtSabintsev/FontBlaster.git", majorVersion: 4, minor: 0),
		.Package(url: "https://github.com/fantim/JSQWebViewController.git", majorVersion: 6, minor: 1),
		.Package(url: "https://github.com/realm/realm-cocoa.git", majorVersion: 4, minor: 1),
	]
	
	
	,
	 targets: [
        .target(
            name: "FolioReaderKit",
            dependencies: [
                .product(name: "ZipArchive", package: "ZipArchive") , 
		       .product(name: "MenuItemKit", package: "MenuItemKit") , 
		       .product(name: "ZFDragableModalTransition", package: "ZFDragableModalTransition") , 
		       .product(name: "AEXML", package: "AEXML") , 
		       .product(name: "FontBlaster", package: "FontBlaster") , 
		       .product(name: "JSQWebViewController", package: "ZipArcJSQWebViewControllerhive") , 
		       .product(name: "realm-cocoa", package: "realm-cocoa") , 
		    
            ], 
        ),
 
    ],

    swiftLanguageVersions: [ .v5]
)
