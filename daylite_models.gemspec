Gem::Specification.new do |s|
  s.name = %q{daylite-models}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dmitriy Dzema", "Jason Holloway"]
  s.date = %q{2017-01-22}
  s.email = %q{jason_holloway@mac.com}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files         = `git ls-files -z`.split("\x0")
  s.has_rdoc = true
  s.rdoc_options = ["--main", "README.markdown"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{daylite-models}
  s.rubygems_version = %q{1.4.1}
  s.summary = %q{Set of ActiveRecord classes to work with the Daylite 4 and 5 databases}
  s.test_files = ["test/test_helper.rb"]

  s.add_dependency 'activerecord'
  s.add_dependency 'active_support'
  s.add_dependency 'pg'
end

