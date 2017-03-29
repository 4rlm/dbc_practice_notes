require_relative '6_7game_copy.rb'
describe SoloGame do
    let(:solo_game){SoloGame.new(player1, player2)}

  it "gets player1 input" do
      expect(solo_game.welcome_p1)

  end

  # it "gets player2 input" do
  # end

  # it "proceses player1-2 data" do
  # end

end
