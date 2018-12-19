require 'sinatra/base'
require './lib/new_message.rb'
class Messages < Sinatra::Base
enable :sessions
  
  before do 
    session[:id] ||= 1
  end 

  get '/' do
    session[:messages] ||= []
    @messages = session[:messages]
    erb :index
  end

  post '/messages' do
    message = New_message.new(params[:content], session[:id])
    session[:messages] << message
    session[:id] += 1
    redirect '/'
  end

  get '/messages/:id' do 
    store = session[:messages]
    id = params[:id].to_i
    store.each do |individual_message|
      @message = individual_message.content if individual_message.id == id 
    end
    erb :messages
  end 

run! if app_file == $0
end




