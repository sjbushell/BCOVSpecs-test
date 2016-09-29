Pod::Spec.new do |s|
  s.name            = "Brightcove-Player-SDK-OUX-test"
  s.version         = "2.1.2"
  s.summary         = "OnceUX plugin for Brightcove Player SDK for iOS."
  s.homepage        = "http://docs.brightcove.com/en/video-cloud/mobile-sdks/brightcove-player-sdk-for-ios/index.html"
  s.license         = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author          = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-oux.git", :tag => "v#{s.version}" }
  
  s.default_subspec = 'default'
   
  s.ios.deployment_target = '7.0'
  s.tvos.deployment_target = '9.0'
  
  s.subspec "default" do |ss|
    ss.dependency 'Brightcove-Player-SDK/default', '~> 5.1.0'
    ss.ios.vendored_framework   = "ios/static/BrightcoveOUX.framework"
    ss.tvos.vendored_framework   = "tvos/BrightcoveOUX.framework"
  end

  s.subspec "dynamic" do |ss|
    ss.dependency 'Brightcove-Player-SDK/dynamic', '~> 5.1.0'
    ss.ios.deployment_target = '8.0'
    ss.ios.vendored_framework   = "ios/dynamic/BrightcoveOUX.framework"
    ss.tvos.deployment_target = '9.0'
    ss.tvos.vendored_framework   = "tvos/BrightcoveOUX.framework"
  end

  s.weak_framework  = 'WebKit'
  s.libraries = 'xml2.2'
end
