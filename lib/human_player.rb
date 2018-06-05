require_relative "player"

class HumanPlayer < Player

  def initialize(name, console)
    super(name)
    @console = console
  end

  def get_input
    @player_input = @console.validated_input
  end

  def get_player_name
    @display.present(Messages.new.player_name(@position))
    @player_name = @display.receive
  end
end
