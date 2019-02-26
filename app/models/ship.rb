class Ship
  attr_reader :name, :type, :booty 
  @@ship = []
 
  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    
    if params[:name] != ""
      @@ship << self
    end
  end
 
  def self.all
    @@ship  
  end
  
  def self.clear
    @@ship = []
  end
end