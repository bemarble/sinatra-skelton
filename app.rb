# app.rb
require 'active_record'
require 'mysql2'
require 'sinatra'

# Import files for database
ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection(:development)

class MySampleData < ActiveRecord::Base
end

get '/' do
	my_sample_data = MySampleData
	p my_sample_data.all
  erb :index
end
