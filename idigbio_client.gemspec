# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "idigbio_client/version"

Gem::Specification.new do |gem|
  gem.license       = "MIT"
  gem.required_ruby_version = ">= 1.9.0"
  gem.name          = "idigbio_client"
  gem.version       = IdigbioClient::VERSION
  gem.authors       = ["Greg Traub", "Dmitry Mozzherin"]
  gem.email         = ["dmozzherin@gmail.com"]

  gem.summary       = "Ruby wrapper for iDigBio API"
  gem.description   = "Ruby wrapper for iDigBio API"
  gem.homepage      = "https://github.com/GlobalNamesArchitecture/idigbio-ruby-client"

  gem.files         = `git ls-files -z`.split("\x0").
    reject { |f| f.match(%r{^(test|spec|features)/}) }
  gem.bindir        = "exe"
  gem.executables   = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ["lib"]
  gem.add_dependency "rest-client", "~> 1.8"
  gem.add_dependency "trollop", "~> 2.1"

  gem.add_development_dependency "bundler", "~> 1.7"
  gem.add_development_dependency "rake", "~> 10.0"
  gem.add_development_dependency "rspec", "~> 3.2"
  gem.add_development_dependency "rubocop", "~> 0.31"
  gem.add_development_dependency "coveralls", "~> 0.8"
end
