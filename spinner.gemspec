# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{spinner}
  s.version = "1.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ross Andrews"]
  s.date = %q{2009-07-02}
  s.description = %q{Spinner is a Ruby library for displaying an animated spinner during long-running tasks.}
  s.email = %q{randrews@geekfu.org}
  s.files = ["spinner.rb"]
  s.has_rdoc = false
  s.homepage = %q{http://github.com/randrews/spinner}
  # s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  # s.require_paths = ["lib"]
  s.rubyforge_project = %q{spinner}
  # s.rubygems_version = %q{1.3.0}
  s.summary = %q{Spinner is a Ruby library for displaying an animated spinner during long-running tasks.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2
  end
end
