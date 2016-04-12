$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "shop/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "shop"
  s.version     = Shop::VERSION
  s.authors     = ["wingtonbrito"]
  s.email       = ["wingtonbrito@gmail.com"]
  s.homepage    = "https://github.com/wingtonbrito"
  s.summary     = "https://github.com/wingtonbrito: Summary of Shop."
  s.description = "https://github.com/wingtonbrito: Description of Shop."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.2"

  s.add_development_dependency "sqlite3"
end
