require './lib/new_message.rb'

DataMapper.setup(:default, 'postgres://localhost/messengerapp')

DataMapper.finalize

DataMapper.auto_migrate!

