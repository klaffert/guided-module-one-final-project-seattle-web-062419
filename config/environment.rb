require 'bundler'
Bundler.require

DB = {:conn => ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')}
require_all 'lib'
ActiveRecord::Base.logger.level = 1 
