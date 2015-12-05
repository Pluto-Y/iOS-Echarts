Pod::Spec.new do |s|
  s.name         = "iOS-Echarts"
  s.version      = "1.1.4"
  s.summary      = "A custom component for the ecomfe's echarts."
  s.homepage     = "https://github.com/Pluto-Y/iOS-Echarts"
  s.license      = { :type => "MIT", :file => 'LICENSE.md' }
  s.author       = { "PlutoY" => "kuaileainits@163.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/Pluto-Y/iOS-Echarts.git", :tag => s.version}
  s.frameworks   = 'UIKit'
  s.source_files = "iOS-Echarts/**/*.{h,m}"
  s.resource     = "iOS-Echarts/Resources/**"
  s.requires_arc = true
end
