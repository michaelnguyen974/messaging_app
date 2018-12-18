require 'sinatra/base'
require './lib/message_list.rb'
class Messages < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end
  
  post '/messages' do
    @input = Message_list.new(params[:input_message])
    session[:messages] = @input
    @input.store_name
    redirect 'history'
  end

  get '/history' do 
    p @message1 = session[:messages]
    p @message1.store_name
    erb(:history)
    redirect 
  end 

run! if app_file == $0
end