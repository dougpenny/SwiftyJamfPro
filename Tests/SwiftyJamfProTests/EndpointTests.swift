//
//    EndpointTests.swift
//
//    Copyright (c) 2022 Doug Penny and North Raleigh Christian Academy
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//    SOFTWARE.

import XCTest
@testable import SwiftyJamfPro

class EndpointTests: XCTestCase {
    var client: SwiftyJamfPro!
    var params: TestingParameters!
    var testDevice: ClassicMobileDevice!

    override func setUpWithError() throws {
        try super.setUpWithError()
        if let paramFileURL = Bundle.module.url(forResource: "testing_parameters", withExtension: "json") {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            do {
                let paramData = try Data(contentsOf: paramFileURL)
                self.params = try decoder.decode(TestingParameters.self, from: paramData)
                self.client = SwiftyJamfPro(self.params.baseURL, username: self.params.username, password: self.params.password)
            } catch let parseError {
                XCTFail("Failed to decode JSON parameters file.\nError: \(parseError.localizedDescription)")
            }
        } else {
            print("File not found!")
        }
    }

    func testClassicMobileDevice() async throws {
        let testDevice = self.params.classicDevice
        if let device = try await client.classicDeviceForID(self.params.testDevice) {
            XCTAssertEqual(testDevice.serialNumber, device.serialNumber)
            XCTAssertEqual(testDevice.modelNumber, device.modelNumber)
            XCTAssertEqual(testDevice.model, device.model)
            XCTAssertEqual(testDevice.userInfo?.username, device.userInfo?.username)
            XCTAssertEqual(testDevice.userInfo?.realName, device.userInfo?.realName)
            XCTAssertEqual(testDevice.userInfo?.emailAddress, device.userInfo?.emailAddress)
        } else {
            XCTFail("An error occured retreiving the mobile device.")
        }
    }
}
