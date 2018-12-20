require './lib/new_message.rb'

DataMapper.setup(:default, 'postgres://localhost/messengerapp_#{}')

DataMapper.finalize

DataMapper.auto_upgrade!

