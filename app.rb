
require 'sinatra/base'
require './lib/new_message.rb'
require './config/data_mapper'


class Messages < Sinatra::Base
enable :sessions
ENV['RACK_ENV'] ||= 'development'
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
  
  
  post '/update-message/:id' do 
    @message = Message.get!(id.to_i)
    @message.update(:text => params[:message])
    redirect"/messages/#{id}"
  end

  delete '/delete-messages/:id' do
    message = New_message.get(params[:id])
    message.destroy
    redirect('/')
  end



run! if app_file == $0
end

