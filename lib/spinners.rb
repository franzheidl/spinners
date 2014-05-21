require 'compass'
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('Spinners', :path => extension_path)

module Spinners
  VERSION = "1.0.3"
  DATE = "2014-05-16"
end
