require 'sinatra/base'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/form' do
    session[:name] = params[:name]
    redirect '/results'
  end

  get '/results' do
    @name = session[:name]
    erb :result
  end

  run! if app_file == $0

end
