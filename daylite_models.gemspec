Gem::Specification.new do |s|
  s.name = %q{daylite-models}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dmitriy Dzema", "Jason Holloway"]
  s.date = %q{2017-01-22}
  s.email = %q{jason_holloway@mac.com}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  spec.files         = `git ls-files -z`.split("\x0")
  s.has_rdoc = true
  s.rdoc_options = ["--main", "README.markdown"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{daylite-models}
  s.rubygems_version = %q{1.4.1}
  s.summary = %q{Set of ActiveRecord classes to work with the Daylite 4 and 5 databases}
  s.test_files = ["test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 2.0.0"])
      s.add_runtime_dependency(%q<activerecord>, [">= 2.0.0"])
      s.add_runtime_dependency(%q<activerecord>, [">= 0.8.3"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.0.0"])
      s.add_dependency(%q<activerecord>, [">= 2.0.0"])
      s.add_dependency(%q<activerecord>, [">= 0.8.3"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.0.0"])
    s.add_dependency(%q<activerecord>, [">= 2.0.0"])
    s.add_dependency(%q<activerecord>, [">= 0.8.3"])
  end
end
