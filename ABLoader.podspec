#
# Be sure to run `pod lib lint ABLoader.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ABLoader"
  s.version          = "0.0.2"
  s.summary          = "ABLoader is a custom loader indicator that you can use in combination with MBProgressHUD."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
ABLoader is a view for your projects that you can use in place of your standard indicator when your app is processing a background thread. ABLoader works well in combination with MBProgressHUD.
DESC
  s.homepage         = "https://github.com/IQUII/ABLoader"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "IQUII" => "info@iquii.com" }
  s.source           = { :git => "https://github.com/IQUII/ABLoader.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/IQUII'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Library/**/*'
  s.resource_bundles = {
    'ABLoader' => ['Library/Assets/*.png']
  }

  # s.public_header_files = 'Library/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'MBProgressHUD'
end
