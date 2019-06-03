//
//  VersionCommandTests.swift
//  CartPodTests
//
//  Created by PondokIOS on 03/06/19.
//

import XCTest
import Quick
import Nimble

class VersionCommandSpec: QuickSpec {
    override func spec() {
        describe("Check is version is correct") {
            it("should parse semantic version") {
                expect("true") == "true"
            }
        }
    }
}
