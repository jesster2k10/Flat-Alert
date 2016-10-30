Pod::Spec.new do |s|

  s.name         = "Flat-Alert"
  s.version      = “1.0.0”
  s.summary      = "A simple, lightweight, flat alternative to UIAlertController written in Swift for iOS based on PMAlertController”

  s.description  = “FlatAlert is a modern, flat alternative to the UIAlertController provided by apple. If you’re like me and you are a designer & developer, then you can understand that the plain old UIAlertControllers may not suit your app as it just doesn’t look good; This is where FlatAlert comes in. It’s a free alternative to UIAlertController. It works in a similar fashion making it easy to work with.”

  s.homepage     = "https://github.com/jesster2k10/Flat-Alert"
  s.screenshots  = "http://i.imgur.com/2K3Muml.png", "http://i.imgur.com/4QSDh0P.png”, “http://i.imgur.com/LUR8Vec.png”

  s.license      = "Apache License, Version 2.0"

  s.author       = { "Jesse Onolememen" => “jesse.ono105@gmail.com" }

  s.platform     = :ios, “9.0”
  s.source       = { :git => "https://github.com/jesster2k10/Flat-Alert.git", :commit => "67983b31c5ad49689724354dbde6ee803817a8cc" }
  s.source_files  = “FlatAlert/**/*.{h,swift}”
  s.resources = “Library/**/*.xib”

end
