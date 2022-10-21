require_relative 'player'

player = Player.new("tester", 50)

if player.score >= 50
    puts "Hit!"
    player.reduce_health
else
    puts "Miss!"
end

