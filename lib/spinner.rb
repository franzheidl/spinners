require 'compass'
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('spinner', :path => extension_path)

module ModernizrMixin
  VERSION = "1.0.0"
  DATE = "2014-05-16"
end
