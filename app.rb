require 'sinatra/base'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/form' do
    $person = Person.new(params[:name])
    $date = DateCalculator.new(params[:day], params[:month])
    # $days_until_bday = $date.calculate_days
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
