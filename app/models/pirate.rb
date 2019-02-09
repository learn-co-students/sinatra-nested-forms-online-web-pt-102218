class Pirate

    attr_accessor :name, :weight, :height
    ALL = []

    def initialize(params)
        ALL << self
        @name = params[:pirate][:name]
        @weight = params[:pirate][:weight]
        @height = params[:pirate][:height]
    end

    def self.all 
        ALL
    end
end