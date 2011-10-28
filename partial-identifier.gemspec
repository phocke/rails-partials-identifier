$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "partial-identifier/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "partial-identifier"
  s.version     = PartialIdentifier::VERSION
  s.authors     = ["Przemek Hocke"]
  s.email       = ["phocke@gmail.com"]
  s.homepage    = "github.com/phocke/partial-identifier"
  s.summary     = "Small utility which helps you with finding partials"
  s.description = "When working on big rails projects it's not always easy to find the partial or template the generated given piece of markup. This plugin was created to help you with that task ..."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"

  s.add_development_dependency "sqlite3"
end
