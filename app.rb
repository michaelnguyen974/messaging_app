# ENV['RACK_ENV'] = 'development'
require 'sinatra/base'
require './lib/new_message.rb'
require './config/data_mapper'


class Messages < Sinatra::Base
enable :sessions
  
  get '/' do
    @messages = New_message.all

    erb :index
  end

  post '/messages' do
   New_message.create(content: params[:content])
    redirect '/'
  end

  get '/messages/:id' do 
    @message = New_message.get(params[:id])
    erb :messages
  end 

run! if app_file == $0
end

