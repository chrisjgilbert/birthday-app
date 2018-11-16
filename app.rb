require 'sinatra/base'
require_relative './lib/person'
require_relative './lib/date_calculator'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/form' do
    $person = Person.new(params[:name])
    $date = DateCalculator.new(params[:month], params[:day])
    $num_of_days = $date.calculate_days
    if $num_of_days == 0
      redirect '/birthday'
    else
      redirect '/non_birthday'
    end
  end

  get '/birthday' do
    @person = $person
    @day = $date.day
    @month = $date.month
    erb :birthday
  end

  get '/non_birthday' do
    @num_of_days = $num_of_days
    erb :non_birthday
  end

  run! if app_file == $0

end
