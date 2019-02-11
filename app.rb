require './environment'

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
      binding.pry
      pirate = Pirate.create(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])
      params[:pirate][:ships].each do |details|
        Ship.create(details)
        ship.pirate = pirate
        ship.save
      end
      erb :'pirates/show'
    end

  end
end
