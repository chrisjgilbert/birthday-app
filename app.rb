require 'sinatra/base'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/form' do
    $person = Person.new(params[:name])
    $date_calculator = DateCalculator.new(params[:day], params[:month])
    redirect '/results'
  end

  get '/results' do
    @person = $person
    @day = $date.day
    @month = $date.month
    erb :result
  end

  run! if app_file == $0

end
