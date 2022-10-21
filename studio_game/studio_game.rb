require_relative 'player'
require_relative 'game'


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