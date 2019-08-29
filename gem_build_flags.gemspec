
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gem_build_flags/version"

Gem::Specification.new do |spec|
  spec.name          = "gem_build_flags"
  spec.version       = GemBuildFlags::VERSION
  spec.authors       = ["Sylvain"]
  spec.email         = ["sylvain.joyeux@tidewise.io"]

  spec.summary       = %q{Stub package to test Autoproj's build config setting functionality}
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/gem_build_flags/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
end
