require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    'welcome'
  end

end
