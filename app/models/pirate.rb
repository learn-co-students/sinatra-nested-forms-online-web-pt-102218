class Pirate
  attr_accessor :name, :weight, :height
  PIRATES = []

  def initialize(name, weight, height)
    self.name = name
    self.weight = weight
    self.height = height
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end
