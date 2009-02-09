require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'

desc 'Generate documentation for the daylite_models plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'UsersPlugin'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

spec = Gem::Specification.new do |s| 
  s.name = "DayliteModels"
  s.version = "0.1.0"
  s.author = "Dmitriy Dzema"
  s.email = "dimad.ag@gmail.com"
  s.summary = "Set of ActiveRecord classes to work with the Daylite 3 database"
  s.files = FileList["{app,lib}/**/*"].to_a
  s.require_paths = ["lib", "."]
  s.test_files = FileList["{test}/**/*test.rb"].to_a

  s.add_dependency("activesupport", ">= 2.0.0")
  s.add_dependency("activerecord", ">= 2.0.0")
  s.add_dependency("openbase", ">= 0.8.3")
end

Rake::GemPackageTask.new(spec) do |pkg| 
  pkg.need_tar = true 
end