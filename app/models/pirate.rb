class Pirate
  
  attr_accessor :name, :weight, :height, :ships
  
  @@all = []
  
  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @ships = []
  end
  
  def self.create(hash)
    pirate = self.new(hash["name"], hash["weight"], hash["height"])
    pirate.save
    pirate
  end
  
  def add_ship(hash)
    ship = Ship.new(hash["name"], hash["type"], hash["booty"])
    self.ships << ship
    ship.pirate = self
    self
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
end