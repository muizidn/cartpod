//
//  Globals.swift
//  CartPodTests
//
//  Created by PondokIOS on 03/06/19.
//

import Foundation

/// Returns path to the built products directory.
var productsDirectory: URL {
    #if os(macOS)
    for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
        return bundle.bundleURL.deletingLastPathComponent()
    }
    fatalError("couldn't find the products directory")
    #else
    return Bundle.main.bundleURL
    #endif
}
