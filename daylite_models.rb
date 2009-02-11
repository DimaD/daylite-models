$: << File.join(File.dirname(__FILE__), 'lib')
require 'init'

module DayliteModels
  VERSION = '0.1.1'
end

DAYLITE_DATABASE_CONFIG = 'config/database.yml'
DAYLITE_CONFIG_SECTION = 'daylite'

if File.exist?(DAYLITE_DATABASE_CONFIG)
  yaml = YAML::load(File.read(DAYLITE_DATABASE_CONFIG))

  if yaml[DAYLITE_CONFIG_SECTION]
    Daylite::Base.establish_connection( yaml[DAYLITE_CONFIG_SECTION] )
  end
end