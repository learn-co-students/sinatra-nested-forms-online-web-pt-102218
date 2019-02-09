require './environment'
# require_relative 'models/pirate'
# require_relative 'models/ship'
module FormsLab
  class App < Sinatra::Base

  get '/' do

    erb :root  # code other routes/actions here
  end

  get '/new' do

    erb :'pirates/new'
  end

  post '/pirates' do

     @pirate = Pirate.new(params["pirate"]["name"], params["pirate"]["weight"], params["pirate"]["height"])
     binding.pry
     @ship_1 = Ship.new(params["pirate"]["ships"][0]["name"], params["pirate"]["ships"][0]["type"], params["pirate"]["ships"][0]["booty"])
    erb :'pirates/show'
  end
end
end
