$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "angular_templates/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "angular-templates"
  s.version     = AngularTemplates::VERSION
  s.authors     = ["tye"]
  s.email       = ["tye@tye.ca"]
  s.homepage    = ""
  s.summary     = "Include your angular templates as part of the Rails assets pipeline."
  s.description = "Include your angular templates as part of the Rails assets pipeline."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
  s.add_development_dependency "sqlite3"
end
