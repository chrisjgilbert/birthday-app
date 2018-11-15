require 'sinatra/base'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/form' do
    $person = Person.new(params[:name])
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect '/results'
  end

  get '/results' do
    @person = $person
    @day = session[:day]
    @month = session[:month]
    erb :result
  end

  run! if app_file == $0

end
