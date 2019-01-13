require ''

DataMapper.setup(:default, "postgres://localhost/chitter_#{ENV['RACK_ENV']}")

DataMapper.finalize

DataMapper.automigrate if ENV['RACK_ENV'] = 'test'

DataMapper.autoupgrade if ENV['RACK_ENV'] = 'development'
