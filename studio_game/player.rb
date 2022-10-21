class Player
    def initialize(initial_name, initial_health=100, initial_score=initial_health+initial_name.length)
        @name = initial_name.capitalize
        @health = initial_health
        @score = initial_score
    end

    attr_accessor :name, :health, :score

    def to_s
        "#{@name} has #{@health} health and a score of #{score}, attacks will #{reflex(50)} with a strike of 50!"
    end

    def hit?(hit_amount)
        @score < hit_amount
    end

    def reflex(hit_amount)
        hit?(hit_amount) ? "Hit!" : "Miss!"
    end

    def reduce_health
        @health -= 10
    end

    def gain_health
        @health += 10
    end
end

if __FILE__ == $0
    player = Player.new("moe")
    puts player.name
    puts player.health
    player.gain_health
    puts player.health
    player.reduce_health
    puts player.health
  end