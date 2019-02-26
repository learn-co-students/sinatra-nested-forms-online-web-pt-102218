require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end
    
    get '/new' do
      erb :'pirates/new'
    end
    
    post '/pirates' do
      # binding.pry
      @pirate = Pirate.create(params["pirate"])
      
      params["pirate"]["ships"].each do |ship|
        @pirate.add_ship(ship)
      end
      
      erb :'pirates/show'
    end
    
  end
end
