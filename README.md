![SwiftyJamfPro](Images/swiftyjamfpro.png)

[![MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)


SwiftyJamfPro is a pure Swift client for the Jamf Pro API. The goal is to simplify the process of communicating with the [Jamf Pro API](https://www.jamf.com/products/jamf-pro/) by handling authentication and decoding, allowing you to focus on using the data, not retrieving it.

_SwiftyJamfPro is not endorsed, sponsored, or affilitated with Jamf in any way. Swift and the Swift logo are trademarks of Apple Inc._

***

## Table of Contents
* [Swift Pacakge Manager](#swift-package-manager)
* [Usage](#usage)
  * [Examples](#examples)
* [Contributing](#contributing)
  * [Endpoint Testing](#endpoint-testing)
* [License](#license)

---

## Swift Package Manager
To include SwiftyJamfPro in a project, add it to the `dependencies` attribute defined in your `Package.swift` file. For example:
```swift
dependencies: [
  .package(url: "https://github.com/dougonecent/SwiftyJamfPro.git")
]
```

---

## Usage
Set environment variables for your base URL, username, and password. Then, in your code, fetch the environment variables and instantiate a client:
```swift
if let baseURL = ProcessInfo.processInfo.environment["BASE_URL"],
    let username = ProcessInfo.processInfo.environment["JAMF_USERNAME"],
    let password = ProcessInfo.processInfo.environment["JAMF_PASSWORD"] {
        let client = SwiftyJamfPro(baseURL, username: username, password: password)
}
```

As a first pass, to meet some immediate needs, we only have one endpoint implemented: Mobile Device by ID.
<a id="examples"></a>
### Find mobile device by ID (Jamf Classic API)
```swift
if let device = try await client.classicDeviceForID(deviceID) {
    // device
} else {
    // no device found
}
```

## Contributing
If you have a feature or idea you would like to see added to SwiftyJamfPro, please [create an issue](https://github.com/dougonecent/SwiftyJamfPro/issues/new) explaining your idea with as much detail as possible.

If you come across a bug, please [create an issue](https://github.com/dougonecent/SwiftyJamfPro/issues/new) explaining the bug with as much detail as possible.

The [Jamf Pro API](https://developer.jamf.com/jamf-pro/reference/classic-api) provides access to a lot of information and, unfortunately, we don't have time to research and implement every endpoint. We've tried to make it as easy as possible for you to extend the library and contribute your changes. The basics for adding a new endpoint are:

1. Fork this repository and clone it to your development machine.
2. Create a new model based on the JSON response expected through the Jamf API. You can find this information on the [Jamf API Reference](https://developer.jamf.com/jamf-pro/reference/classic-api) site.
3. Add a test to the `ModelTests.swift` file with an example of the JSON response to ensure the model is decoded properly.
4. Add a new function to the `SwiftyJamfProEndpoints.swift` file for your endpoint. You can simply copy one that is already there and change the `path` and the model type to match the expected response.

Please feel free to open a pull request with any additional endpoints you create. We would love to have as many of the endpoints covered as possible.

We strive to keep the code as clean as possible and follow standard Swift coding conventions, mainly the [Swift API Design Guidelines](https://swift.org/documentation/api-design-guidelines/) and the [raywenderlich.com Swift Style Guide](https://github.com/raywenderlich/swift-style-guide). Please run any code changes through [SwiftLint](https://github.com/realm/SwiftLint) before submitting a pull request.

### Endpoint Testing
We provide the files needed to test your endpoints against a sandbox Jamf Pro server, but you'll have to do a little setup on your end.

1. Duplicate the file `testing_parameters.sample.json` and name it `testing_parameters.json`. This is a JSON file to hold the values you will be testing against and is decoded when the `EndpointTests` file is run.
2. Add the `testing_parameters.json` file to your Xcode project, including it in the `SwiftyJamfProTests` target.
3. Modify the `TestingParameters.swift` model to included any additional parameters you would like to use in your tests.
4. Add any new testing functions to the `EndpointTests.swift` file.


---

## License
SwiftyJamfPro is released under an MIT license. See [LICENSE](https://opensource.org/licenses/MIT) for more information.
