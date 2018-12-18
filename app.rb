require 'sinatra/base'
require './lib/message_list.rb'
class Messages < Sinatra::Base
enable :sessions
  
  get '/' do
    @message1 = session[:messages]
    erb :index
  end

  post '/messages' do
    session[:messages] = Message_list.new(params[:input_message])
    redirect '/'
  end

run! if app_file == $0
end
