require_relative "game"

describe "Game" do

    before do
        @game = Game.new("Instance")
    end

    context "game with one player" do
        before do
            @init_health = 50
            @player = Player.new("Player1", @init_health)
            @game.add_player(@player)
        end
        
        it "Player gets hit if rolled higher than score" do
            Dice.any_instance.stub(:roll).and_return(80)
            @game.party_defends

            @player.health.should == @init_health - 10
        end

        it "Player dodges if rolled lower than score" do
            Dice.any_instance.stub(:roll).and_return(30)
            @game.party_defends

            @player.health.should == @init_health
        end
        
    end
    
end
