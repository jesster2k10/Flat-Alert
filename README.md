## Flat Alert
A simple, lightweight, flat alternative to UIAlertController written in Swift for iOS

## Sreenshots
----------------
![alt](http://i.imgur.com/4QSDh0P.png "One button alert")
![alt](http://i.imgur.com/LUR8Vec.png "Three Button alert")

## Features
----------------

- [x] Header View
- [x] Title
- [x] Description message
- [x] Customizations: fonts, colors, dimensions & more
- [x] 1, 2 buttons (horizontally) or 3+ buttons (vertically)
- [x] Closure when a button is pressed
- [x] Similar implementation to UIAlertController
- [x] Cocoapods
- [x] Animation with UIKit Dynamics
- [x] Objective-C compatibility
- [x] Swift 2.3 & Swift 3 support


## Requirements
----------------

- iOS 9.0+
- Xcode 8+

## CocoaPods
----------------

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate Flat Alert into your Xcode project using CocoaPods, specify it in your `Podfile`:


```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

pod 'Flat-Alert'
```

Then, run the following command:

```bash
$ pod install
```

## Manually
----------------
1. Download and drop ```/Library``` folder in your project.  
2. Congratulations!  

## Usage
----------------
The usage is very similar to `UIAlertController`.
`Flat Alert` has two styles: Alert & Walkthrough.

#### Show a simple alert with two button

```swift

//Create the alert
        let alert = FlatAlert(title: "Flat Alert", message: "Wow, dosen't this look amazing? I am completely astonished by this work that I must donate via PayPal immediately!", style: .alert)
        //create the action
        let action = FlatAlertAction(title: "Ok", style: .normal) { 
            print("Pressed ok action")
        }
        
        //add the action
        alert.add(action: action)
        
        //present the alert
        present(alert, animated: true, completion: nil)

```
## Contributing

- If you **need help** or you'd like to **ask a general question**, open an issue.
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## MIT License
----------------
Flat Alert is available under the MIT license. See the LICENSE file for more info.
