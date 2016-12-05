# KGHeartBeatz

[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift3 Compatible](https://img.shields.io/badge/KGHeartBeatz-Swift3-brightgreen.svg)](https://img.shields.io/badge/KGHeartBeatz-Swift3-brightgreen.svg)
[![license](https://img.shields.io/github/license/Gypsyan/KGHeartBeatz.svg)]()

`KGHeartBeatz` is a heart beat wave animation.

# Installation

## Cocoapods

Install Cocoapods if need be.

```
$ gem install cocoapods
```

Add `KGHeartBeatz` in your `Podfile`.

```ruby
use_frameworks!

pod 'KGHeartBeatz'
```

Then, run the following command.

```
$ pod install
```
## Carthage

Install Carthage if need be.

```bash
$ brew update
$ brew install carthage
```

Add `KGHeartBeatz` in your `Cartfile`.

```ruby
github "Gypsyan/KGHeartBeatz"
```

Run `carthage` to build the framework and drag the built `KGHeartBeatz.framework` into your Xcode project.

# Usage

Import the `KGHeartBeatz`
```
import KGHeartBeatz
```

Create a `KGHeartBeatz` object.

  ```
  let toggleButton = KGHeartBeatz()
  self.view.addSubview(toggleButton)

  //Start animation
  toggleButton.startAnimation()
  ```

# License

Copyright 2016 Ananth.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
