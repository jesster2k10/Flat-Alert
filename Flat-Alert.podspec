Pod::Spec.new do |s|

  s.name         = "Flat-Alert"
  s.version      = "1.0.0"
  s.summary      = "A simple, lightweight, flat alternative to UIAlertController written in Swift for iOS"

  s.description  =  <<-DESC
                    Flat Alert is an iOS drop-in framework that displays a modern, flat style
                    alert with a number of avalibale options to customise the appearance.  
                    Flat Alert is meant as a replacement for the undocumented, private UIKit UIAlertController.
                   DESC

  s.homepage     = "https://github.com/jesster2k10/Flat-Alert"
  s.screenshots  = "http://i.imgur.com/2K3Muml.png", "http://i.imgur.com/4QSDh0P.png", "http://i.imgur.com/LUR8Vec.png"

  s.license      = "Apache License, Version 2.0"

  s.author       = { "Jesse Onolememen" => "jesse.ono105@gmail.com" }

  s.ios.deployment_target = '9.0'
  s.source       = { :git => "https://github.com/jesster2k10/Flat-Alert.git", :commit => "67983b31c5ad49689724354dbde6ee803817a8cc" }
  s.source_files  = '*.{h,swift}'
  s.resources = 'Library/**/*.xib'

end
