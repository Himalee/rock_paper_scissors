require "game"

describe Game do
  it "runs game with rock and paper" do
    player_one = Player.new("Himalee")
    player_two = Player.new("Daisy")
    output = StringIO.new
    input = StringIO.new("rock\npaper")
    display = Display.new(output, input)
    game = Game.new(player_one, player_two, display)
    game.run
    expect(output.string).to include("Daisy wins")
  end

  it "runs game with rock and paper" do
    player_one = Player.new("Himalee")
    player_two = Player.new("Daisy")
    output = StringIO.new
    input = StringIO.new("scissors\npaper")
    display = Display.new(output, input)
    game = Game.new(player_one, player_two, display)
    game.run
    expect(output.string).to include("Himalee wins")
  end

  it "runs game with rock and rock" do
    player_one = Player.new("Himalee")
    player_two = Player.new("Daisy")
    output = StringIO.new
    input = StringIO.new("rock\nrock")
    display = Display.new(output, input)
    game = Game.new(player_one, player_two, display)
    game.run
    expect(output.string).to include("It's a draw!")
  end
end
