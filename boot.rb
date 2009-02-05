require 'init'

yaml = YAML::load(File.read('database.yml'))

if (yaml['daylite'])
  Daylite::Base.establish_connection(yaml['daylite'])
end