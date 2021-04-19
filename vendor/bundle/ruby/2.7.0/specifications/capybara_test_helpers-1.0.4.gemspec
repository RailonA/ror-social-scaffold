# -*- encoding: utf-8 -*-
# stub: capybara_test_helpers 1.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "capybara_test_helpers".freeze
  s.version = "1.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/ElMassimo/capybara_test_helpers/blob/master/CHANGELOG.md", "homepage_uri" => "https://github.com/ElMassimo/capybara_test_helpers", "source_code_uri" => "https://github.com/ElMassimo/capybara_test_helpers" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Maximo Mussini".freeze]
  s.date = "2020-11-26"
  s.description = "Write tests that everyone can understand, and leverage your Ruby skills to keep them easy to read and easy to change.".freeze
  s.email = ["maximomussini@gmail.com".freeze]
  s.homepage = "https://github.com/ElMassimo/capybara_test_helpers".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Easily write fluent Page Objects for Capybara in Ruby.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<capybara>.freeze, [">= 0"])
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, [">= 0"])
  end
end
