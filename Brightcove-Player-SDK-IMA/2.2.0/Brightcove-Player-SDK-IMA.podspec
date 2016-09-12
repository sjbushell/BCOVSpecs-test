Pod::Spec.new do |s|
  s.name         = "Brightcove-Player-SDK-IMA"
  s.version      = "2.2.0"
  s.summary      = "IMA plugin for Brightcove Player SDK for iOS."
  s.homepage     = "http://docs.brightcove.com/en/video-cloud/mobile-sdks/brightcove-player-sdk-for-ios/index.html"
  s.license      = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.author       = { "Brightcove" => "brightcove-native-player-sdks@googlegroups.com" }

  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.source       = { :git => "https://github.com/brightcove/brightcove-player-sdk-ios-ima.git", :tag => "v#{s.version}" }
  s.requires_arc = true

  s.default_subspec = 'Default'
  s.dependency 'Brightcove-Player-SDK', '~> 5.1.0'
  s.vendored_framework = "ios/BrightcoveIMA.framework"

  s.subspec 'Default' do |ds|
    ds.dependency 'GoogleAds-IMA-iOS-SDK', '3.2.1'
  end

  s.subspec 'ForAdMob' do |fs|
    fs.dependency 'GoogleAds-IMA-iOS-SDK-For-AdMob', '3.2.1'
#    fs.dependency 'Google-AdMob-Ads-SDK', '6.8.0'
  end

end
