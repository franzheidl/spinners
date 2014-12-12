require './lib/spinners'

Gem::Specification.new do |s|
  
  # Release Info
  s.version = Spinners::VERSION
  s.date = Spinners::DATE

  # Gem Details
  s.name = "spinners"
  s.description = %q{A Sass mixin and Compass extension to generate pure CSS3 loading/busy indicators}
  s.summary = %q{Uses a single rotating element and a partial border. Fully customizable.}
  s.authors = ["Franz Heidl"]
  s.homepage = "https://github.com/franzheidl/spinners"
  s.licenses = ['MIT']

  # Readme file
  s.files = ["README.md"]

  # Library Files
  s.files += Dir.glob("lib/**/*.*")

  # Sass Files
  s.files += Dir.glob("stylesheets/**/*.*")

  # Gem Bookkeeping
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}

  # Gems Dependencies
  s.add_dependency("sass",      ["~> 3.2"])
  
end
