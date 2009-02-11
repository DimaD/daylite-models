require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Generate documentation for the daylite_models plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'DayliteModels'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.markdown')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'daylite_models'
  require 'hoe'

  #oh, shit
  class Hoe
    def extra_deps
      @extra_deps.reject do |x|
        Array(x).first == 'hoe'
      end
    end
  end

  Hoe.new('daylite-models', DayliteModels::VERSION) do |s|
    s.name = "daylite-models"
    s.version = "0.1.0"
    s.author = "Dmitriy Dzema"
    s.email = "dimad.ag@gmail.com"
    s.summary = "Set of ActiveRecord classes to work with the Daylite 3 database"

    s.rubyforge_name = 'daylite-models'
    s.remote_rdoc_dir = '' # Release to root
    s.need_zip = true
    s.extra_deps = [ ["activesupport", ">= 2.0.0"], ["activerecord", ">= 2.0.0"], ["activerecord", ">= 0.8.3"]]
  end
rescue LoadError => e
  
end
