require 'sinatra/base'

class Messages < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/messages' do
    @message1 = params[:input_message]
    erb(:history)
  end
run! if app_file == $0
end
