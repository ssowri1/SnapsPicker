Pod::Spec.new do |s|
  s.name             = 'SnapsPicker'
  s.version          = '0.0.3'
  s.summary          = 'A framework to pick our snaps from phone gallery or camera'
  s.description      = <<-DESC
  A framework to pick our snaps from phone gallery or camera by capture
                       DESC

  s.homepage         = 'https://github.com/ssowri1/SnapsPicker'
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { 'ssowri1' => 'ssowri1@gmail.com' }
  s.source           = { :git => 'https://github.com/ssowri1/SPPhotoViewer.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'SnapsPicker/**/*'
  s.frameworks = 'UIKit'
end