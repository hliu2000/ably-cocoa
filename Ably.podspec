Pod::Spec.new do |s|
  s.name              = "Ably"
  s.version           = `Scripts/get-version.sh`
  s.summary           = "iOS client for Ably"
  s.description       = <<-DESC
                        iOS client library for ably.io, the realtime messaging service, written in Objective-C and ready for Swift 4.0 and later.
                        DESC
  s.homepage          = "https://www.ably.io"
  s.license           = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author            = { "Ably" => "support@ably.io" }
  s.source            = { :git => "https://github.com/ably/ably-ios.git", :tag => s.version.to_s }
  s.social_media_url  = 'https://twitter.com/ablyrealtime'
  s.documentation_url = "https://www.ably.io/documentation"
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '10.0'
  s.osx.deployment_target = '10.11'
  s.requires_arc      = true
  s.swift_version     = '4.2'
  s.source_files      = 'Source/**/*.{h,m,swift}'
  s.private_header_files = 'Source/*+Private.h', 'Source/Private/*.h'
  s.module_map        = 'Source/Ably.modulemap'
  s.dependency 'SocketRocketAblyFork', '0.5.2-ably-2'
  s.dependency 'MsgPackAblyFork', '0.2.0-ably-1'
  s.dependency 'KSCrashAblyFork', '1.15.18-ably-1'
  s.dependency 'ULID', '1.1.0'
  s.dependency 'SAMKeychain', '1.5.3'
end
