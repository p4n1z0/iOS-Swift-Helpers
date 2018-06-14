
Pod::Spec.new do |s|

  s.name         = 'Helpers'
  s.version      = '6.1.3'
  s.summary      = 'Helpers.'

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = 'Helpers.'
  s.authors = 'Ciber'

  s.homepage     = 'http://www.ciberexperis.com'
  s.license      = 'MIT'
  # s.license      = { :type => 'MIT', :file => 'FILE_LICENSE' }

  s.platform     = :ios, '9.0'

  s.source       = { :git => 'ssh://git@gitlab.ciber-es.com:7346/mobility/Ciber/Common/iOS/iOS-Swift-Helpers.git', :tag => s.version.to_s }
  s.source_files  = 'Helpers/Helpers/*.swift'
  #s.exclude_files = 'Classes/Exclude'

  s.dependency 'Locker', '~> 1.1.0'
  s.dependency 'CryptoSwift', '0.8.3'

end
