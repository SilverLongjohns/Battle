class Player
    attr_accessor :name, :hitpoints

    def initialize(name)
        @name = name
        @hitpoints = 100
    end

    def attack(player)
        player.hitpoints -= 10
    end

end