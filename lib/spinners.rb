extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
stylesheets_path = File.join(extension_path, 'stylesheets')


if (defined? Compass)
  Compass::Frameworks.register('Spinners', :path => extension_path)
else
  if ENV.has_key?("SASS_PATH")
    ENV["SASS_PATH"] = ENV["SASS_PATH"] + File::PATH_SEPARATOR + stylesheets_path
  else
    ENV["SASS_PATH"] = stylesheets_path
  end
end

module Spinners
  VERSION = "1.1.0"
  DATE = "2014-12-12"
end
