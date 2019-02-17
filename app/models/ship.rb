class Ship
  attr_reader :name, :type, :booty

  @@all = []

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = arg[:booty]
    @@SHIPS << self
  end

  def self.all
    @@all
  end

  def self.clear
    self.all.clear
  end



end
