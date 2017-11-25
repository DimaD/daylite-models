require 'active_record'
require 'active_support'
require 'pg'
require 'daylite'

require 'daylite/base'
Dir[File.join(__dir__, 'daylite', '*.rb')].each { |file| require file }

module DayliteModels
  VERSION = '0.5.6'.freeze
end
