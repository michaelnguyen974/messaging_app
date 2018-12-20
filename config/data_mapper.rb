require './lib/new_message.rb'
require 'pry'

DataMapper.setup(:default, "postgres://localhost/messengerapp_#{ENV['RACK_ENV']}")

DataMapper.finalize

if ENV['RACK_ENV'] == 'development'
  DataMapper.auto_upgrade! 
else
  DataMapper.auto_migrate! 
end 

# binding.pry
