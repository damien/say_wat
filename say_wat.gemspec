# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "say_wat/version"

Gem::Specification.new do |s|
  s.name        = "say_wat"
  s.version     = SayWat::VERSION
  s.authors     = ["Damien Wilson"]
  s.email       = ["damien@mindglob.com"]
  s.homepage    = ""
  s.summary     = %q{Says whatever you want to hear}
  s.description = %q{SayWat is a simple ruby script that subscribes to a redis server and says whatever you tell it to}

  s.rubyforge_project = "say_wat"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "redis", "~> 2.2.2"

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
