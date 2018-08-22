class TicTacToe
  def initialize(board=nil)
    @board = board || Array.new(9, " ")
  end
  def turn_count
    @board.count { |cell| cell == 'X' || cell == 'O'}
  end
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
end