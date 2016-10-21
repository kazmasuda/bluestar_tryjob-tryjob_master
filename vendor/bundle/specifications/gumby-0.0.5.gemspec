# -*- encoding: utf-8 -*-
# stub: gumby 0.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "gumby"
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Francesco Serra"]
  s.date = "2013-07-15"
  s.description = "Gumby Framework for Rails"
  s.email = ["afnecors@gmail.com"]
  s.homepage = "http://rubygems.org/gems/gumby"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Gumby Framework for Rails"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_runtime_dependency(%q<modernizr-rails>, [">= 0"])
    else
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<modernizr-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<modernizr-rails>, [">= 0"])
  end
end
