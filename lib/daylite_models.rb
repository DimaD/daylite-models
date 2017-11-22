require 'active_record'
require 'active_support'
require 'pg'
require 'daylite'

#models_path = File.join(File.dirname(__FILE__), 'app', 'models')
#daylite_path = File.join(models_path, 'daylite')

#$: << models_path << daylite_path << '.'
# $LOAD_PATH << models_path << daylite_path << '.'
# ActiveSupport::Dependencies.autoload_paths << models_path << daylite_path << '.'

require 'daylite/base'
Dir[File.join(__dir__, 'daylite', '*.rb')].each {|file| require file }

module DayliteModels
  VERSION = '0.5.3'
end
