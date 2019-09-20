#
# Be sure to run `pod lib lint ZZBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'ZZBase'
    s.version          = '0.1.2'
    s.summary          = 'ZZBase.'
    s.description      = <<-DESC
    here is descroption.
    DESC
    
    s.homepage         = 'https://github.com/zhaoName/ZZBase'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'zhaoName' => 'zhao1529835@126.com' }
    s.source           = { :git => 'https://github.com/zhaoName/ZZBase.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'
    s.source_files = 'ZZBase/Classes/**/*'
    
    ## 子库
    s.subspec 'ZZCategray' do |ca|
        ca.source_files = 'ZZBase/Classes/ZZCategray/**/*'
    end
    
    s.subspec 'ZZNetwork' do |net|
        net.source_files = 'ZZBase/Classes/ZZNetwork/**/*'
        net.dependency 'AFNetworking', '~> 3.0'
    end
    
end
