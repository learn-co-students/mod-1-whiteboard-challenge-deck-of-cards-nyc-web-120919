require 'bundler/setup'
Bundler.require
require 'sinatra/activerecord'
require 'rake'
require 'active_record'
require_relative '../app/card'
require_relative '../app/deck'


DB = ActiveRecord::Base.establish_connection(
    :adapter => 'sqlite3',
    :database => './db/migrate/cards.db'
)



ActiveRecord::Base.logger = Logger.new(STDOUT)
