class Ship
  attr_accessor :name, :type, :booty
  SHIPS = []

  def initialize(name, type, booty)
    self.name = name
    self.type = type
    self.booty = booty
    SHIPS << self
  end

  def self.all
    SHIPS
  end
end
