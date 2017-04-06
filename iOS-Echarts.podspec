Pod::Spec.new do |s|
  s.name                = "iOS-Echarts"
  s.version             = "1.4.4"
  s.summary             = "A custom component for the ecomfe's echarts 2."
  s.homepage            = "https://github.com/Pluto-Y/iOS-Echarts"
  s.license             = { :type => "MIT", :file => 'LICENSE.md' }
  s.author              = { "PlutoY" => "kuaileainits@163.com" }
  #s.platform            = :ios, "7.0"
  s.source              = { :git => "https://github.com/Pluto-Y/iOS-Echarts.git", :tag => s.version}
  s.source_files        = "iOS-Echarts/**/*.{h,m}"
  s.resource_bundles    = { 'iOS-Echarts' => 'iOS-Echarts/Resources/**' }
  s.prefix_header_contents = '#import "PYUtilities.h"'
  s.requires_arc        = true
  s.ios.frameworks          = 'UIKit'
  s.osx.frameworks          = 'AppKit', 'WebKit'

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'

end
