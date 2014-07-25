DayliteModels
===========

This is a set of ActiveRecord classes, designed to work with Daylite 4 and 5 by [Marketcircle](www.marketcircle.com).

All the classes are in namespace Daylite. For example Daylite projects live in the class Daylite::Project.

Models attributes are mapped to usual ruby underscore_notation from Daylite cameCase notation.

Usage
=======

You can use this module as rails plugin and as a standalone library.

Please note
-----------
This plugin assumes that you have added an admin username to the existing Postgres database or somehow know Marketcirlce's own administrative username and password.  

Without this admin username and password, access to your database will not be possible.

Usage as Rails plugin
---------------------

Install the plugin

    ./script/plugin install <path_to_repo>


Add _daylite_ section to you database.yml

    daylite:
        adapter: postgres
	encoding: unicode
	sslmode: require
	port: 6181
        host: my_daylite_host
        database: MyOrganization
        username: my_admin_username
        password: my_password


Add the following line to you environment.rb:

    Daylite::Base.establish_connection(:daylite)

You are ready to rock! Now you can use Daylite classes in you application as usual Rails models.

Usage as a standalone library
-----------------------------
Place

    require 'daylite_models'

somewhere in you initialization code and provide connection info through Daylite::Base.establish_connection call. You will need to provide adapter, database, host, username and password params. See ActiveRecord::Base.establish_connection and Postgres documentation for more info. You may use the following piece of code:

    DAYLITE_DATABASE_CONFIG = 'config/database.yml'
    DAYLITE_CONFIG_SECTION = 'daylite'

    if File.exist?(DAYLITE_DATABASE_CONFIG)
      yaml = YAML::load(File.read(DAYLITE_DATABASE_CONFIG))

      if yaml[DAYLITE_CONFIG_SECTION]
        Daylite::Base.establish_connection( yaml[DAYLITE_CONFIG_SECTION] )
      end
    end
