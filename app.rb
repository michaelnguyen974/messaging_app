require 'sinatra/base'
require './lib/new_message.rb'
class Messages < Sinatra::Base
enable :sessions
  
  get '/' do
    @message1 = session[:messages]
    erb :index
  end

  post '/messages' do
    session[:messages] = New_message.new(params[:input_message])
    
    redirect '/'
  end

run! if app_file == $0
end




