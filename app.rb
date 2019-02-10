require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
      Pirate.create(params[:pirate])
      params[:pirate][:ships].each do |details|
        Ship.create(details)
      end
    end


    post '/pirates' do
      erb :'pirates/show'
    end

  end
end
