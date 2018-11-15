require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    'welcome'
  end

  run! if app_file == $0

end
