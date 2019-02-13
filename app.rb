require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      # erb :instructions
      "Welcome to the Nested Forms Lab! \nlet's navigate to the '/new'"
    end

    get "/new" do
     erb :"pirates/new"
   end

   post "/pirates" do
      @pirate = Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])
      @ships = params[:pirate][:ships]
      erb :"pirates/show"
    end
  end
end
