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

begin
  require 'lib/daylite_models'
  require 'hoe'

  # oh, dear
  class Hoe
    def extra_deps
      @extra_deps.reject do |x|
        Array(x).first == 'hoe'
      end
    end
  end

  Hoe.new('daylite-models', DayliteModels::VERSION) do |s|
    s.name = 'daylite-models'
    s.author = 'Dmitriy Dzema'
    s.email = 'dimad.ag@gmail.com'
    s.summary = 'Set of ActiveRecord classes to work with the Daylite v4 & v5 databases'

    s.rubyforge_name = 'daylite-models'
    s.remote_rdoc_dir = '' # Release to root
    s.need_zip = true
    s.extra_deps = [['activesupport', '>= 2.0.0'], ['activerecord', '>= 2.0.0'], ['activerecord', '>= 0.8.3']]
  end
rescue LoadError
end
