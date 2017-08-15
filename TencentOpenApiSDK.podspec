Pod::Spec.new do |s|
  s.name                = "TencentOpenApiSDK"
  s.version             = "3.2.3.501"
  s.summary             = "The Official iOS SDK of Tencent Open API."
  s.homepage            = "http://wiki.open.qq.com"
  s.license             = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright (c) 2016 Tencent. All rights reserved.
      LICENSE
  }
  s.author              = { "OpenQQ" => "opensupport@qq.com" }
  s.platform            = :ios, '8.0'
  s.requires_arc        = true

  s.source              = { :git=> "http://github.com/islate/TencentOpenApiSDK.git", :tag => "#{s.version}" }
  s.xcconfig            = { "FRAMEWORK_SEARCH_PATHS" => "$(inherited)" }

  s.libraries      = 'iconv', 'z', 'c++', 'sqlite3'
  s.frameworks     = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony'

  s.vendored_frameworks = 'TencentOpenApiSDK/TencentOpenAPI.framework'
  s.source_files = 'TencentOpenApiSDK/TencentOpenAPI.framework/Headers/**/*.h'
  s.resource = 'TencentOpenApiSDK/TencentOpenApi_IOS_Bundle.bundle'

end
