require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = "RNAudioPcmStream"
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = "https://github.com/mybigday/react-native-audio-pcm-stream"
  s.source         = { :git => 'https://github.com/mybigday/react-native-audio-pcm-stream.git' }

  s.requires_arc   = true
  s.ios.deployment_target = '8.0'

  s.preserve_paths = 'README.md', 'package.json', 'index.js'
  s.source_files   = 'iOS/*.{h,m}'

  s.dependency 'React'
end
