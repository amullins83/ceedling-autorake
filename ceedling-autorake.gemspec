# -*- encoding: utf-8 -*-
$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__), 'lib'))
require "version"

Gem::Specification.new do |s|
  s.name        = "ceedling-autorake"
  s.version     = ::Autorake::Version::GEM
  s.platform    = ::Gem::Platform::RUBY
  s.authors     = %w[Austin Mullins]
  s.email       = %w[austin.mullins@gmail.com]
  s.homepage    = "http://walkedesigns.com/"
  s.summary     = %q{Automated Testing for Ceedling Projects}
  s.description = %q{Ceedling provides a set of tools to deploy its guts in a folder or which can be required in a Rakefile. This makes that process more automatic.}

  s.homepage = "//github.com/amullins83/ceedling-autorake"

  s.add_dependency "rake", ">= 0.8.7"
  s.add_dependency "watch", "~0.1.0"

  # Files needed from submodules
  s.files         = []
  s.files      += Dir['**/*']
  s.test_files  = Dir['test/**/*', 'spec/**/*', 'features/**/*']

  s.require_paths = ["lib"]

  s.license = "MIT"

end
