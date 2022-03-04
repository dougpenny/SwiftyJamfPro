//
//    MobileDevice.swift
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

public struct ClassicMobileDevice: Codable {
    private let mobileDevice: MobileDevice?

    var id: Int? { return mobileDevice?.general?.id }
    var displayName: String? { return mobileDevice?.general?.displayName }
    var deviceName: String? { return mobileDevice?.general?.deviceName }
    var name: String? { return mobileDevice?.general?.name }
    var assetTag: String? { return mobileDevice?.general?.assetTag }
    var lastInventoryUpdateUtc: String? { return mobileDevice?.general?.lastInventoryUpdateUtc }
    var capacity: Int? { return mobileDevice?.general?.capacity }
    var capacityMb: Int? { return mobileDevice?.general?.capacityMb }
    var available: Int? { return mobileDevice?.general?.available }
    var availableMb: Int? { return mobileDevice?.general?.availableMb }
    var percentageUsed: Int? { return mobileDevice?.general?.percentageUsed }
    var osType: String? { return mobileDevice?.general?.osType }
    var osVersion: String? { return mobileDevice?.general?.osVersion }
    var osBuild: String? { return mobileDevice?.general?.osBuild }
    var serialNumber: String? { return mobileDevice?.general?.serialNumber }
    var udid: String? { return mobileDevice?.general?.udid }
    var initialEntryDateUtc: String? { return mobileDevice?.general?.initialEntryDateUtc }
    var phoneNumber: String? { return mobileDevice?.general?.phoneNumber }
    var ipAddress: String? { return mobileDevice?.general?.ipAddress }
    var wifiMacAddress: String? { return mobileDevice?.general?.wifiMacAddress }
    var bluetoothMacAddress: String? { return mobileDevice?.general?.bluetoothMacAddress }
    var modemFirmware: String? { return mobileDevice?.general?.modemFirmware }
    var model: String? { return mobileDevice?.general?.model }
    var modelIdentifier: String? { return mobileDevice?.general?.modelIdentifier }
    var modelNumber: String? { return mobileDevice?.general?.modelNumber }
    var modelDisplay: String? { return mobileDevice?.general?.modelDisplay }
    var deviceOwnershipLevel: String? { return mobileDevice?.general?.deviceOwnershipLevel }
    var lastEnrollmentUtc: String? { return mobileDevice?.general?.lastEnrollmentUtc }
    var managed: Bool? { return mobileDevice?.general?.managed }
    var supervised: Bool? { return mobileDevice?.general?.supervised }
    var exchangeActivesyncDeviceIdentifier: String? { return mobileDevice?.general?.exchangeActivesyncDeviceIdentifier }
    var shared: String? { return mobileDevice?.general?.shared }
    var tethered: String? { return mobileDevice?.general?.tethered }
    var batteryLevel: Int? { return mobileDevice?.general?.batteryLevel }
    var bleCapable: Bool? { return mobileDevice?.general?.bleCapable }
    var deviceLocatorServiceEnabled: Bool? { return mobileDevice?.general?.deviceLocatorServiceEnabled }
    var doNotDisturbEnabled: Bool? { return mobileDevice?.general?.doNotDisturbEnabled }
    var cloudBackupEnabled: Bool? { return mobileDevice?.general?.cloudBackupEnabled }
    var lastCloudBackupDateUtc: String? { return mobileDevice?.general?.lastCloudBackupDateUtc }
    var locationServicesEnabled: Bool? { return mobileDevice?.general?.locationServicesEnabled }
    var itunesStoreAccountIsActive: Bool? { return mobileDevice?.general?.itunesStoreAccountIsActive }
    var lastBackupTimeUtc: String? { return mobileDevice?.general?.lastBackupTimeUtc }
    
    var installedApps: [Application]? { return mobileDevice?.applications }
    var userInfo: UserInfo? { return mobileDevice?.location }
    var configurationProfiles: [ConfigurationProfile]? { return mobileDevice?.configurationProfiles }
    var provisioningProfiles: [ProvisioningProfile]? { return mobileDevice?.provisioningProfiles }
    var mobileDeviceGroups: [MobileGroup]? { return mobileDevice?.mobileDeviceGroups }
    var extensionAttributes: [ExtensionAttribute]? { return mobileDevice?.extensionAttributes }
    
    private struct MobileDevice: Codable {
        let general: GeneralInfo?
        let applications: [Application]?
        let location: UserInfo?
        let configurationProfiles: [ConfigurationProfile]?
        let provisioningProfiles: [ProvisioningProfile]?
        let mobileDeviceGroups: [MobileGroup]?
        let extensionAttributes: [ExtensionAttribute]?
    }
}

public struct Application: Codable {
    let name: String?
    let version: String?
    let shortVersion: String?
    let status: String?
    let identifier: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "applicationName"
        case version = "applicationVersion"
        case shortVersion = "applicationShortVersion"
        case status = "applicationStatus"
        case identifier
    }
}

public struct UserInfo: Codable {
    let username: String?
    let realname: String?
    let realName: String?
    let emailAddress: String?
    let position: String?
    let phone: String?
    let phoneNumber: String?
    let department: String?
    let building: String?
    let room: String?
}

public struct ConfigurationProfile: Codable {
    let displayName: String?
    let version: String?
    let identifier: String?
    let uuid: String?
}

public struct ProvisioningProfile: Codable {
    let displayName: String?
    let expirationDate: String?
    let uuid: String?
}

public struct MobileGroup: Codable {
    let id: Int?
    let name: String?
}

public struct ExtensionAttribute: Codable {
    let id: Int?
    let name: String?
    let type: String?
    let value: String?
}

public struct GeneralInfo: Codable {
    let id: Int?
    let displayName: String?
    let deviceName: String?
    let name: String?
    let assetTag: String?
    let lastInventoryUpdateUtc: String?
    let capacity: Int?
    let capacityMb: Int?
    let available: Int?
    let availableMb: Int?
    let percentageUsed: Int?
    let osType: String?
    let osVersion: String?
    let osBuild: String?
    let serialNumber: String?
    let udid: String?
    let initialEntryDateUtc: String?
    let phoneNumber: String?
    let ipAddress: String?
    let wifiMacAddress: String?
    let bluetoothMacAddress: String?
    let modemFirmware: String?
    let model: String?
    let modelIdentifier: String?
    let modelNumber: String?
    let modelDisplay: String?
    let deviceOwnershipLevel: String?
    let lastEnrollmentUtc: String?
    let managed: Bool?
    let supervised: Bool?
    let exchangeActivesyncDeviceIdentifier: String?
    let shared: String?
    let tethered: String?
    let batteryLevel: Int?
    let bleCapable: Bool?
    let deviceLocatorServiceEnabled: Bool?
    let doNotDisturbEnabled: Bool?
    let cloudBackupEnabled: Bool?
    let lastCloudBackupDateUtc: String?
    let locationServicesEnabled: Bool?
    let itunesStoreAccountIsActive: Bool?
    let lastBackupTimeUtc: String?
}
