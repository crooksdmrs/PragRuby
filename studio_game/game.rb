class Game

    require_relative 'player'
    require_relative 'dice'
    def initialize(title)
        @title = title
        @players = []
    end

    attr_accessor :title, :players

    def add_player(player)
        @players << player
    end

    def party_defends
        puts "#{@title}'s Group is attacked!"
        @players.each do |player|
            die = Dice.new
            die_value = die.roll(100)
            puts "Rolled a #{die_value}"
            if player.reflex(die_value) == "Hit!"
                player.reduce_health
                puts "#{player.name} is hit and takes 10 damage."
                puts "\n"
            else
                puts "#{player.name} dodges out of the way."
                puts "\n"
            end
        end
    end

    def party_heal
        puts "#{@title}'s Group is healed!"

        @players.each do |player|
            player.gain_health
            puts player
        end
        puts "\n"
    end
end