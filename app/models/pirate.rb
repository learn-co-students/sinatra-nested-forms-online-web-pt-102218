class Pirate

    attr_accessor :name, :weight, :height,:ships

    def initialize(name,weight,height,ships)
        @name=name
        @weight=weight
        @height=height
        @ships=ships.map{|ship|
            Ship.new(ship["name"],ship["type"],ship["booty"])}
    end
end