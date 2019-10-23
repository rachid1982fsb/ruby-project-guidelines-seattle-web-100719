require_relative 'config/environment'
require 'sinatra/activerecord/rake'
desc 'starts a console'
task :c do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

desc 'seed the database with some data'
task :seed do
  require_relative './db/seeds.rb'
end

