# -*- encoding: utf-8 -*-
# stub: rubocop-github 0.14.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rubocop-github".freeze
  s.version = "0.14.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["GitHub".freeze]
  s.date = "2019-12-12"
  s.description = "Code style checking for GitHub Ruby repositories ".freeze
  s.email = "engineering@github.com".freeze
  s.homepage = "https://github.com/github/rubocop-github".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "RuboCop GitHub".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rubocop>.freeze, ["~> 0.59"])
    s.add_development_dependency(%q<actionview>.freeze, ["~> 5.0"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.10"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
  else
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.59"])
    s.add_dependency(%q<actionview>.freeze, ["~> 5.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
  end
end
