require 'active_support'

models_path = File.join(File.dirname(__FILE__), 'app', 'models')
daylite_path = File.join(models_path, 'daylite')

$LOAD_PATH << models_path << daylite_path
ActiveSupport::Dependencies.load_paths << models_path << daylite_path
