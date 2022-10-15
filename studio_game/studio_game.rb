class Player
    def initialize(initial_name, initial_health=100, initial_score=initial_health+initial_name.length)
        @name = initial_name.capitalize
        @health = initial_health
        @score = initial_score
    end

    attr_accessor :name, :health, :score

    def to_s
        "#{@name} has #{@health} health and a score of #{score}"
    end

    def reduce_health
        @health -= 10
    end

    def gain_health
        @health += 10
    end
end

class Game
    def initialize(title)
        @title = title
        @players = []
    end

    attr_accessor :title, :players

    def add_player(player)
        @players << player
    end

    def party_heal
        puts "#{@title}'s Group Heal"

        @players.each do |player|
            player.gain_health
            puts player
        end
        puts "\n"
    end
end


player1 = Player.new("larry", 60)
player2 = Player.new("curly", 125)
player3 = Player.new("moe")

group1 = Game.new("Nexus")
group1.add_player(player1)
group1.add_player(player2)
group1.add_player(player3)
puts group1.players
group1.party_heal

group2 = Game.new("Occulus")
group2.add_player(player1)
group2.add_player(player2)
group2.party_heal

puts player1