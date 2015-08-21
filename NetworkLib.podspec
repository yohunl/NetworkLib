Pod::Spec.new do |s|
  s.name             = "NetworkLib"
  s.version          = "1.0.0"
  s.summary          = "测试用的 NetworkLib."
  s.description      = "这个是一个测试的工程,是用来试验cocopods建立库,然后添加到本地的spec中,方便其它同事使用"

  s.homepage         = "https://github.com/yohunl/NetworkLib"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "yohunl" => "yohunl@163.com" }
  s.source           = { :git => "https://github.com/yohunl/NetworkLib.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/yohunl'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'NetworkLib' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'AFNetworking'
end
