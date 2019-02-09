require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params)
      @ships = []
      params[:pirate][:ships].each do |i|
        @ships << Ship.new(i)
      end

      erb :"pirates/show"
    end
  end
end
