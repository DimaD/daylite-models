require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rdoc/task'

desc 'Generate documentation for the daylite_models plugin.'
RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'DayliteModels'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.markdown')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
