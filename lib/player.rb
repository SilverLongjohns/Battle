class Player
    attr_accessor :name, :hitpoints

    def initialize(name)
        @name = name
        @hitpoints = 100
    end

    def receive_damage
        @hitpoints -= 10
    end

end