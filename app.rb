require 'sinatra/base'
require_relative './lib/person'
require_relative './lib/date_calculator'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/form' do
    @person = Person.create(params[:name])

    @date = DateCalculator.create(params[:year], params[:month], params[:day])

    num_of_days = @date.calculate_days

    if num_of_days == 0
      redirect '/birthday'
    else
      redirect '/non_birthday'
    end
  end

  before do
    @person = Person.instance
    @date = DateCalculator.instance
  end

  get '/birthday' do
    @day = @date.day
    @month = @date.month
    erb :birthday
  end

  get '/non_birthday' do
    @num_of_days = @date.calculate_days
    erb :non_birthday
  end

  run! if app_file == $0

end
