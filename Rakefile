require 'rake'
require 'yard'
require 'rubocop/rake_task'

task :default => [:rubocop]

desc 'Generate documentation for the daylite_models plugin.'
YARD::Rake::YardocTask.new do |t|
  t.files   = ['README.markdown', 'lib/**/*.rb']
  t.options = ['--any', '--extra', '--opts']
  t.stats_options = ['--list-undoc']
end

RuboCop::RakeTask.new
