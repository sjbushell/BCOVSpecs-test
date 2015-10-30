Pod::Spec.new do |s|
  s.name         = "Brightcove-Player-SDK-FW"
  s.version      = "1.1.1"
  s.summary      = "Freewheel plugin for Brightcove Player SDK for iOS."
  s.homepage     = "http://docs.brightcove.com/en/video-cloud/mobile-sdks/brightcove-player-sdk-for-ios/index.html"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-fw.git", :tag => "v#{s.version}" }
  s.source_files = "Headers/*.h"
  s.public_header_files = "Headers/*.h"
  s.vendored_library = "Library/libBCOVFW.a"
  s.requires_arc = true

  s.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore', 'CoreLocation', 'MessageUI', 'EventKit', 'CoreMedia', 'AVFoundation'
  s.weak_frameworks = 'AdSupport'
  s.libraries = 'xml2'
 
  s.dependency 'Brightcove-Player-SDK', '~> 4.4'
end
