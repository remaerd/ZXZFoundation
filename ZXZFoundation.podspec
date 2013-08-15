@version = "1.0.0"

Pod::Spec.new do |s|
  s.name         = "ZXZFoundation"
  s.version      = @version
  s.summary      = "Sean Cheng's Development Framework."
  s.homepage     = "https://github.com/remaerd/ZXZFoundation"
  s.license      = { :type => 'MIT'}

  s.author       = { "Sean Cheng" => "sean@extremelylimited.com" }
  s.source       = { :git => "https://github.com/remaerd/ZXZFoundation.git", :tag => @version }
  
  s.source_files = 'ZXZFoundation/**/*.{h,m}'
  
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
end
