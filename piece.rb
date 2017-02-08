class Piece
attr_reader :name, :position

  def initialize(name)
    @name = name
    @position = 1
  end

  def move_piece(distance)
    return @position += distance
  end
end