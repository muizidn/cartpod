//
//  VersionCommand.swift
//  AEXML
//
//  Created by PondokIOS on 03/06/19.
//

import Foundation
import Commandant
import CartPodCore

struct VersionCommand: CommandProtocol {
    let verb: String = "version"
    let function: String = "Display the current version of CartPod"
    
    func run(_ options: NoOptions<CartPodError>) -> Result<(), CartPodError> {
        print(CartPodCoreKitVersion.current.value)
        return .success(())
    }
}
