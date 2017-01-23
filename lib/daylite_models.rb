require 'active_record'
require 'active_support'
require 'pg'

models_path = File.join(File.dirname(__FILE__), 'app', 'models')
daylite_path = File.join(models_path, 'daylite')

$: << models_path << daylite_path << '.'
# $LOAD_PATH << models_path << daylite_path << '.'
# ActiveSupport::Dependencies.autoload_paths << models_path << daylite_path << '.'

module DayliteModels
  VERSION = '0.4.2'
end
