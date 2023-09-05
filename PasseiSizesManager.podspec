Pod::Spec.new do |s|
  s.name                  = 'PasseiSizesManager'
  s.version               = '0.0.1'
  s.summary               = 'Sizes manager'
  s.swift_version         = '5.0'
  s.description           = <<-DESC "Describe the use of pod file"
  Global sizes application
  DESC
  s.homepage              = 'https://github.com/ziminny/PasseiSizesManager'
  s.license               = { :type => 'PASSEI-GROUP', :file => 'LICENSE' }
  s.authors               = { 'Vagner Oliveira' => 'ziminny@gmail.com' }
  s.source                = { :git => 'https://github.com/ziminny/PasseiSizesManager.git', :tag => s.version.to_s }
  s.ios.deployment_target = '16.0'
  s.source_files          = 'PasseiSizesManager/Classes/**/*' 
  s.dependency 'PasseiLogManager'
  end