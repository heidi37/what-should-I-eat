# frozen_string_literal: true

require_relative "lib/what_should_i_eat/version"

Gem::Specification.new do |spec|
  spec.name          = "what_should_i_eat"
  spec.version       = WhatShouldIEat::VERSION
  spec.authors       = ["Heidi Fryzell"]
  spec.email         = ["hfryzell@gmail.com"]

  spec.summary       = "Pick a Recipe"
  spec.description   = "A Ruby Gem that helps you pick a recipe."
  spec.homepage      = "https://github.com/heidi37/what-should-I-eat"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "https://github.com/heidi37/what-should-I-eat"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/heidi37/what-should-I-eat"
  spec.metadata["changelog_uri"] = "https://github.com/heidi37/what-should-I-eat/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "http"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
