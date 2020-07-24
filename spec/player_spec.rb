require "player"

describe Player do
    subject{ described_class.new('Jake') }
    it "returns its name" do
        expect(subject.name).to eq 'Jake'
    end

    it "can track a player's hitpoints" do
        expect(subject.hitpoints).to eq 100
    end

    it "can attack for 10 damage" do
        player_1 = Player.new('Ryan')
        player_2 = Player.new('Jake')

        player_2.receive_damage
        expect(player_2.hitpoints).to eq 90
    end
end