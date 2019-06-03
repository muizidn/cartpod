//
//  CartPodCoreKitVersion.swift
//  CartPodCore
//
//  Created by PondokIOS on 03/06/19.
//

import Foundation
import struct SPMUtility.Version

public struct CartPodCoreKitVersion {
    public let value: Version
    public static let current = CartPodCoreKitVersion(
        value: Version(0,0,1)
    )
}
