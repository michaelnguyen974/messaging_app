require 'sinatra/base'
require './lib/new_message.rb'
class Messages < Sinatra::Base
enable :sessions
  
  get '/' do
    session[:messages] ||= []
    @messages = session[:messages]
    erb :index
  end

  post '/messages' do
    message = New_message.new(params[:content])
    session[:messages] << message
    redirect '/'
  end

run! if app_file == $0
end




