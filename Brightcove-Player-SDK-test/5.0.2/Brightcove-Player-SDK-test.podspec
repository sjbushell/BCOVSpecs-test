Pod::Spec.new do |s|

  s.name         = "Brightcove-Player-SDK-test"
  s.version      = "5.0.2"
  s.summary      = "Brightcove Player SDK for iOS."
  s.homepage     = "http://docs.brightcove.com/en/video-cloud/mobile-sdks/brightcove-player-sdk-for-ios/index.html"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios.git", :tag => "v#{s.version}" }
  s.frameworks  = 'AVFoundation', 'CoreMedia', 'MediaPlayer'

  s.default_subspec = 'default'
   
  s.subspec "default" do |ss|
    ss.ios.deployment_target = '7.0'
    ss.ios.vendored_framework   = "ios/static/BrightcovePlayerSDK.framework"
    ss.tvos.deployment_target = '9.0' 
    ss.tvos.vendored_framework  = "tvos/BrightcovePlayerSDK.framework"
  end

  s.subspec "dynamic" do |ss|
    ss.ios.deployment_target = '8.0'
    ss.ios.vendored_framework   = "ios/dynamic/BrightcovePlayerSDK.framework"
    ss.tvos.deployment_target = '9.0' 
    ss.tvos.vendored_framework  = "tvos/BrightcovePlayerSDK.framework"
  end
end
