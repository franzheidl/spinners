require 'compass'
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('spinners', :path => extension_path)

module ModernizrMixin
  VERSION = "1.0.1"
  DATE = "2014-05-16"
end