@version = "1.0.0"

Pod::Spec.new do |s|
  s.name         = "SCFoundation"
  s.version      = @version
  s.summary      = "Sean Cheng's Development Framework."
  s.homepage     = "https://github.com/remaerd/SCFoundation"
  s.license      = { :type => 'MIT'}

  s.author       = { "Sean Cheng" => "sean@extremelylimited.com" }
  s.source       = { :git => "https://github.com/remaerd/SCFoundation.git", :tag => @version }
  
  s.source_files = 'SCFoundation/**/*.{h,m}'
  
  s.dependency 'ObjectiveRecord'
  
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
end
