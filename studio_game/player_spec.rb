require_relative 'player'

describe Player do

    before do
        @init_health = 50
        @player = Player.new("david", @init_health)
    end

    it "Names are capitalized" do
        @player.name.should == "David"
    end

    it "Player has a health value" do
        @player.health.should == 50
    end

    it "Player has a score value" do
        @player.score.should == 55
    end

    it "Player data is represented in a string" do
        @player.to_s.should == "David has 50 health and a score of 55, attacks will Miss! with a strike of 50!"
    end

    it "Player health is increaded by 10 when healed" do
        @player.gain_health
        @player.health.should == @init_health + 10
    end

    it "Player health is reduced by 10 when hit" do
        @player.reduce_health
        @player.health.should == @init_health - 10
    end

    context "Player created with a default health value" do

        before do
            @player = Player.new("david")
        end

        it "Initial health is 100" do
            @player.health.should == 100
        end
    end

    context "Player with a score of at least 50" do
        before do
            @player = Player.new("charlie", 50)
        end

        it "Player is hit" do
            @player.should be_hit(60)
        end

        it "Player has a hit status" do
            @player.reflex(60).should == "Hit!"
        end
    end


    context "Player with a score of at less than 50" do
        before do
            @player = Player.new("charlie", 40)
        end

        it "Player is not hit" do
            @player.should_not be_hit(30)
        end

        it "Player has a miss status" do
            @player.reflex(30).should == "Miss!"
        end
    end
end