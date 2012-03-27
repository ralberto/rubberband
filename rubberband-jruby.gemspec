# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "elasticsearch/version"

Gem::Specification.new do |s|
  s.name = "rubberband-jruby"
  s.version = ElasticSearch::VERSION

  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Grant Rodgers", "Rui Goncalves"]
  s.email       = ["grantr@gmail.com", "rgoncalves@gmail.com"]
  s.homepage    = "https://github.com/ralberto/rubberband"
  s.summary     = %q{An ElasticSearch client with ThriftClient-like failover handling.}
  s.description = %q{An ElasticSearch client with ThriftClient-like failover handling.}

  s.rubyforge_project = "rubberband"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.licenses = ["Apache v2"]

  s.add_runtime_dependency("excon", ["~> 0.13.2"])
  s.add_runtime_dependency(%q<activesupport>, ["~> 3.0"])
  s.add_development_dependency("rake", ["~> 0.9.2"])
  s.add_development_dependency("rspec", ["~> 2.0"])
  s.add_development_dependency("yard", [">= 0.7.0"])
  s.add_development_dependency("simplecov", [">= 0.3.8"])
  s.add_development_dependency("mocha", ["~> 0.9.0"])

end
