require 'compass'
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('spinners', :path => extension_path)

module spinners
  VERSION = "1.0.2"
  DATE = "2014-05-16"
end
