require './lib/peep'

DataMapper.setup(:default, "postgres://localhost/chitter_#{ENV['RACK_ENV']}")

DataMapper.finalize

# DataMapper.auto_migrate! if ENV['RACK_ENV'] = 'test'

# DataMapper.auto_upgrade! if ENV['RACK_ENV'] = 'development'
