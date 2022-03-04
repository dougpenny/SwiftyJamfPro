//
//    ModelTests.swift
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

class ModelTests: XCTestCase {

    func testClassicMobileDeviceModel() throws {
        let jsonMobileDeviceExample =
"""
{
    "mobile_device": {
        "general": {
            "id": 1,
            "display_name": "Tinas iPad",
            "device_name": "Tinas iPad",
            "name": "Tinas iPad",
            "asset_tag": "string",
            "last_inventory_update": "2017-07-07 18:37:04",
            "last_inventory_update_epoch": 1499470624555,
            "last_inventory_update_utc": "2017-07-07T18:37:04.555-0500",
            "capacity": 12159,
            "capacity_mb": 12159,
            "available": 11487,
            "available_mb": 11487,
            "percentage_used": 5,
            "os_type": "iOS",
            "os_version": "10.3.2",
            "os_build": "14F89",
            "serial_number": "C02Q7KHTGFWF",
            "udid": "270aae10800b6e61a2ee2bbc285eb967050b5984",
            "initial_entry_date_epoch": 1499470624555,
            "initial_entry_date_utc": "2017-07-07T18:37:04.555-0500",
            "phone_number": "123-555-6789",
            "ip_address": "192.0.0.1",
            "wifi_mac_address": "E0:AC:CB:97:36:G4",
            "bluetooth_mac_address": "E0:AC:CB:97:36:G6",
            "modem_firmware": "2.61.00",
            "model": "iPhone 6S",
            "model_identifier": "iPhone8,1",
            "model_number": "MKRY2LL",
            "model_display": "iPhone 6S",
            "device_ownership_level": "Institutional",
            "last_enrollment_epoch": 1499470624555,
            "last_enrollment_utc": "2017-07-07T18:37:04.555-0500",
            "managed": true,
            "supervised": true,
            "exchange_activesync_device_identifier": "TUCLLFJHPL779ACL9DCJQFN39F",
            "shared": "string",
            "tethered": "string",
            "battery_level": 95,
            "ble_capable": true,
            "device_locator_service_enabled": true,
            "do_not_disturb_enabled": true,
            "cloud_backup_enabled": true,
            "last_cloud_backup_date_epoch": 1499470624555,
            "last_cloud_backup_date_utc": "2017-07-07T18:37:04.555-0500",
            "location_services_enabled": true,
            "itunes_store_account_is_active": true,
            "last_backup_time_epoch": 1499470624555,
            "last_backup_time_utc": "2017-07-07T18:37:04.555-0500"
        },
        "location": {
            "username": "JBetty",
            "realname": "Betty Jackson",
            "real_name": "Betty Jackson",
            "email_address": "jbetty@company.com",
            "position": "Systems Engineer",
            "phone": "123-555-6789",
            "phone_number": "123-555-6789",
            "department": "Sales Staff",
            "building": "New York Office",
            "room": "1159"
        },
        "purchasing": {
            "is_purchased": true,
            "is_leased": true,
            "po_number": "string",
            "vendor": "string",
            "applecare_id": "string",
            "purchase_price": "string",
            "purchasing_account": "string",
            "po_date": "string",
            "po_date_epoch": 0,
            "po_date_utc": "string",
            "warranty_expires": "string",
            "warranty_expires_epoch": 0,
            "warranty_expires_utc": "string",
            "lease_expires": "string",
            "lease_expires_epoch": 0,
            "lease_expires_utc": "string",
            "life_expectancy": 0,
            "purchasing_contact": "string"
        },
        "applications": [
            {
                "application_name": "Apple Store",
                "application_version": "5.14.0.761",
                "application_short_version": "514000",
                "application_status": "Unmanaged",
                "identifier": "com.apple.store.Jolly"
            },
            {
                "application_name": "Self Service",
                "application_version": "2021040101",
                "application_short_version": "10.10.6",
                "application_status": "Managed",
                "identifier": "com.jamfsoftware.selfservice"
            }
        ],
        "security_object": {
            "data_protection": true,
            "block_level_encryption_capable": true,
            "file_level_encryption_capable": true,
            "passcode_present": true,
            "passcode_compliant": true,
            "passcode_compliant_with_profile": true,
            "passcode_lock_grace_period_enforced": "Not Available",
            "hardware_encryption": "string",
            "activation_lock_enabled": true,
            "jailbreak_detected": "Normal",
            "lost_mode_enabled": true,
            "lost_mode_enforced": true,
            "lost_mode_enable_issued_epoch": 1517598768512,
            "lost_mode_enable_issued_utc": "2018-02-02T13:12:48.512-0600",
            "lost_mode_message": "Please return to Company",
            "lost_mode_phone": "555-555-5555",
            "lost_mode_footnote": "string",
            "lost_location_epoch": 1517598680459,
            "lost_location_utc": "2018-02-02T13:11:20.459-0600",
            "lost_location_latitude": 44.81436821,
            "lost_location_longitude": -91.502672,
            "lost_location_altitude": 242.88067627,
            "lost_location_speed": -1,
            "lost_location_course": -1,
            "lost_location_horizontal_accuracy": 65,
            "lost_location_vertical_accuracy": 10
        },
        "network": {
            "home_carrier_network": "Verizon",
            "cellular_technology": "Unknown",
            "voice_roaming_enabled": "Yes",
            "imei": "35 200706 056227 1",
            "iccid": "8914 8000 0010 0254 6259",
            "current_carrier_network": "string",
            "carrier_settings_version": 20,
            "current_mobile_country_code": 311,
            "current_mobile_network_code": 480,
            "home_mobile_country_code": 311,
            "home_mobile_network_code": 480,
            "data_roaming_enabled": true,
            "phone_number": 5555555555
        },
        "certificates": [
            {
                "common_name": "JSS Built-In Signing Certificate",
                "identity": true,
                "expires_utc": "2026-05-23T20:29:09.000-0400",
                "expires_epoch": 1779582549000
            },
            {
                "common_name": "leader: JSS Built-In Signing Certificate",
                "identity": false,
                "expires_utc": "2026-04-04T08:09:16.000-0400",
                "expires_epoch": 1775304556000
            },
            {
                "common_name": "member: JSS Built-In Signing Certificate",
                "identity": true,
                "expires_utc": "2026-04-04T08:09:15.000-0400",
                "expires_epoch": 1775304555000
            }
        ],
        "configuration_profiles": [
            {
                "display_name": "WiFi",
                "version": "1",
                "identifier": "279889AF-1564-4480-A61D-860DF5EFDF26",
                "uuid": "279889AF-1564-4480-A61D-860DF5EFDF26"
            }
        ],
        "provisioning_profiles": [
            {
                "display_name": "In-House App Provisioning Profile",
                "expiration_date": "2018-01-29",
                "expiration_date_epoch": 0,
                "expiration_date_utc": "2018-01-29T14:18:02.000-0600",
                "uuid": "279889AF-1564-4480-A61D-860DF5EFDF26"
            }
        ],
        "mobile_device_groups": [
            {
                "id": 1,
                "name": "String"
            }
        ],
        "extension_attributes": [
            {
                "id": 1,
                "name": "Asset Selector",
                "type": "String",
                "value": "Sample Value"
            }
        ]
    }
}
"""
        if let data = jsonMobileDeviceExample.data(using: .utf8) {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            do {
                let mobileDevice = try decoder.decode(ClassicMobileDevice.self, from: data)
                XCTAssertEqual(mobileDevice.id, 1)
                XCTAssertEqual(mobileDevice.displayName, "Tinas iPad")
                XCTAssertEqual(mobileDevice.deviceName, "Tinas iPad")
                XCTAssertEqual(mobileDevice.name, "Tinas iPad")
                XCTAssertEqual(mobileDevice.assetTag, "string")
                XCTAssertEqual(mobileDevice.lastInventoryUpdateUtc, "2017-07-07T18:37:04.555-0500")
                XCTAssertEqual(mobileDevice.capacity, 12159)
                XCTAssertEqual(mobileDevice.capacityMb, 12159)
                XCTAssertEqual(mobileDevice.available, 11487)
                XCTAssertEqual(mobileDevice.availableMb, 11487)
                XCTAssertEqual(mobileDevice.percentageUsed, 5)
                XCTAssertEqual(mobileDevice.osType, "iOS")
                XCTAssertEqual(mobileDevice.osVersion, "10.3.2")
                XCTAssertEqual(mobileDevice.osBuild, "14F89")
                XCTAssertEqual(mobileDevice.serialNumber, "C02Q7KHTGFWF")
                XCTAssertEqual(mobileDevice.udid, "270aae10800b6e61a2ee2bbc285eb967050b5984")
                XCTAssertEqual(mobileDevice.initialEntryDateUtc, "2017-07-07T18:37:04.555-0500")
                XCTAssertEqual(mobileDevice.phoneNumber, "123-555-6789")
                XCTAssertEqual(mobileDevice.ipAddress, "192.0.0.1")
                XCTAssertEqual(mobileDevice.wifiMacAddress, "E0:AC:CB:97:36:G4")
                XCTAssertEqual(mobileDevice.bluetoothMacAddress, "E0:AC:CB:97:36:G6")
                XCTAssertEqual(mobileDevice.modemFirmware, "2.61.00")
                XCTAssertEqual(mobileDevice.model, "iPhone 6S")
                XCTAssertEqual(mobileDevice.modelIdentifier, "iPhone8,1")
                XCTAssertEqual(mobileDevice.modelNumber, "MKRY2LL")
                XCTAssertEqual(mobileDevice.modelDisplay, "iPhone 6S")
                XCTAssertEqual(mobileDevice.deviceOwnershipLevel, "Institutional")
                XCTAssertEqual(mobileDevice.lastEnrollmentUtc, "2017-07-07T18:37:04.555-0500")
                XCTAssertEqual(mobileDevice.managed, true)
                XCTAssertEqual(mobileDevice.supervised, true)
                XCTAssertEqual(mobileDevice.exchangeActivesyncDeviceIdentifier, "TUCLLFJHPL779ACL9DCJQFN39F")
                XCTAssertEqual(mobileDevice.shared, "string")
                XCTAssertEqual(mobileDevice.tethered, "string")
                XCTAssertEqual(mobileDevice.batteryLevel, 95)
                XCTAssertEqual(mobileDevice.bleCapable, true)
                XCTAssertEqual(mobileDevice.deviceLocatorServiceEnabled, true)
                XCTAssertEqual(mobileDevice.doNotDisturbEnabled, true)
                XCTAssertEqual(mobileDevice.cloudBackupEnabled, true)
                XCTAssertEqual(mobileDevice.lastCloudBackupDateUtc, "2017-07-07T18:37:04.555-0500")
                XCTAssertEqual(mobileDevice.locationServicesEnabled, true)
                XCTAssertEqual(mobileDevice.itunesStoreAccountIsActive, true)
                XCTAssertEqual(mobileDevice.lastBackupTimeUtc, "2017-07-07T18:37:04.555-0500")

                XCTAssertEqual(mobileDevice.installedApps?[0].name, "Apple Store")
                XCTAssertEqual(mobileDevice.installedApps?[0].version, "5.14.0.761")
                XCTAssertEqual(mobileDevice.installedApps?[0].shortVersion, "514000")
                XCTAssertEqual(mobileDevice.installedApps?[0].status, "Unmanaged")
                XCTAssertEqual(mobileDevice.installedApps?[0].identifier, "com.apple.store.Jolly")

                XCTAssertEqual(mobileDevice.userInfo?.username, "JBetty")
                XCTAssertEqual(mobileDevice.userInfo?.realName, "Betty Jackson")
                XCTAssertEqual(mobileDevice.userInfo?.emailAddress, "jbetty@company.com")
                XCTAssertEqual(mobileDevice.userInfo?.position, "Systems Engineer")
                XCTAssertEqual(mobileDevice.userInfo?.phoneNumber, "123-555-6789")
                XCTAssertEqual(mobileDevice.userInfo?.department, "Sales Staff")
                XCTAssertEqual(mobileDevice.userInfo?.building, "New York Office")
                XCTAssertEqual(mobileDevice.userInfo?.room, "1159")

                XCTAssertEqual(mobileDevice.configurationProfiles?[0].displayName, "WiFi")
                XCTAssertEqual(mobileDevice.configurationProfiles?[0].version, "1")
                XCTAssertEqual(mobileDevice.configurationProfiles?[0].identifier, "279889AF-1564-4480-A61D-860DF5EFDF26")
                XCTAssertEqual(mobileDevice.configurationProfiles?[0].uuid, "279889AF-1564-4480-A61D-860DF5EFDF26")

                XCTAssertEqual(mobileDevice.provisioningProfiles?[0].displayName, "In-House App Provisioning Profile")
                XCTAssertEqual(mobileDevice.provisioningProfiles?[0].expirationDate, "2018-01-29")
                XCTAssertEqual(mobileDevice.provisioningProfiles?[0].uuid, "279889AF-1564-4480-A61D-860DF5EFDF26")

                XCTAssertEqual(mobileDevice.mobileDeviceGroups?[0].id, 1)
                XCTAssertEqual(mobileDevice.mobileDeviceGroups?[0].name, "String")

                XCTAssertEqual(mobileDevice.extensionAttributes?[0].id, 1)
                XCTAssertEqual(mobileDevice.extensionAttributes?[0].name, "Asset Selector")
                XCTAssertEqual(mobileDevice.extensionAttributes?[0].type, "String")
                XCTAssertEqual(mobileDevice.extensionAttributes?[0].value, "Sample Value")
            } catch let parseError {
                XCTFail(parseError.localizedDescription)
            }
        }
    }
    
    func testTokenModel() throws {
        let jsonTokenExample =
"""
{
  "token": "token-string",
  "expires": "2022-02-23T16:09:48.159Z"
}
"""
        if let data = jsonTokenExample.data(using: .utf8) {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            do {
                let token = try decoder.decode(Token.self, from: data)
                XCTAssertEqual(token.token, "token-string")
                
                let isoDate = "2022-02-23T16:09:48.159Z"
                let dateFormatter = ISO8601DateFormatter()
                dateFormatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
                if let date = dateFormatter.date(from:isoDate) {
                    XCTAssertEqual(token.expires, date)
                } else {
                    XCTFail("Could not create date object from string.")
                }
                
            } catch let parseError {
                XCTFail(parseError.localizedDescription)
            }
        }
    }

}
