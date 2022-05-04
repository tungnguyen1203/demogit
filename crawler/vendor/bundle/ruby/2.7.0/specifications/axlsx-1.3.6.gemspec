# -*- encoding: utf-8 -*-
# stub: axlsx 1.3.6 ruby lib

Gem::Specification.new do |s|
  s.name = "axlsx".freeze
  s.version = "1.3.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Randy Morgan".freeze]
  s.date = "2013-04-23"
  s.description = "    xlsx spreadsheet generation with charts, images, automated column width, customizable styles and full schema validation. Axlsx helps you create beautiful Office Open XML Spreadsheet documents ( Excel, Google Spreadsheets, Numbers, LibreOffice) without having to understand the entire ECMA specification. Check out the README for some examples of how easy it is. Best of all, you can validate your xlsx file before serialization so you know for sure that anything generated is going to load on your client's machine.\n".freeze
  s.email = "digital.ipseity@gmail.com".freeze
  s.homepage = "https://github.com/randym/axlsx".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "excel OOXML (xlsx) with charts, styles, images and autowidth columns.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 1.4.1"])
    s.add_runtime_dependency(%q<rubyzip>.freeze, [">= 0.9.5"])
    s.add_runtime_dependency(%q<htmlentities>.freeze, ["~> 4.3.1"])
    s.add_development_dependency(%q<yard>.freeze, [">= 0"])
    s.add_development_dependency(%q<kramdown>.freeze, [">= 0"])
  else
    s.add_dependency(%q<nokogiri>.freeze, [">= 1.4.1"])
    s.add_dependency(%q<rubyzip>.freeze, [">= 0.9.5"])
    s.add_dependency(%q<htmlentities>.freeze, ["~> 4.3.1"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<kramdown>.freeze, [">= 0"])
  end
end
