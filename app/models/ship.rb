class Ship
  attr_reader :name, :type, :booty

  @@SHIPS = []

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = arg[:booty]
    @@SHIPS << self
  end

  def self.all
    @@SHIPS
  end

  def clear 
    @@SHIPS = []
  end



end
