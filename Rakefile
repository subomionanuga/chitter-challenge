require_relative 'app'
require './lib/peep'
require 'data_mapper'
require 'rspec/core/rake_task'


desc "Trucates tables"
namespace :db do
  task :auto_migrate do
    DataMapper.auto_migrate!
    # if ENV['RACK_ENV'] == 'test'
    puts "Migration successfull"
  end
end

desc "Data stores"
namespace :db do
  task :auto_upgrade do
    DataMapper.auto_upgrade!
    # if ENV['RACK_ENV'] == 'development'
    puts "Upgrade successful"
  end
end
