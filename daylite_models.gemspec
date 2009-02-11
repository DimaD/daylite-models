Gem::Specification.new do |s|
  s.name = %q{daylite-models}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dmitriy Dzema"]
  s.date = %q{2009-02-11}
  s.email = %q{dimad.ag@gmail.com}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files = ["History.txt", "LICENSE", "Manifest.txt", "README.markdown", "Rakefile", "app/models/daylite.rb", "app/models/daylite/contact.rb", "app/models/daylite/organization.rb", "app/models/daylite/organization_task_join.rb", "app/models/daylite/project.rb", "app/models/daylite/project_task_join.rb", "app/models/daylite/role.rb", "app/models/daylite/role_type.rb", "app/models/daylite/task.rb", "app/models/daylite/user.rb", "config/database.yml.exmp", "daylite_models.gemspec", "daylite_models.rb", "init.rb", "install.rb", "lib/active_record/connection_adapters/openbase_adapter.rb", "tasks/users_plugin_tasks.rake", "test/daylite_models_plugin_test.rb", "test/test_helper.rb", "uninstall.rb"]
  s.has_rdoc = true
  s.rdoc_options = ["--main", "README.markdown"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{daylite-models}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Set of ActiveRecord classes to work with the Daylite 3 database}
  s.test_files = ["test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 2.0.0"])
      s.add_runtime_dependency(%q<activerecord>, [">= 2.0.0"])
      s.add_runtime_dependency(%q<activerecord>, [">= 0.8.3"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.3"])
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
