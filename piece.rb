class Piece
attr_reader :name
attr_accessor :position

  def initialize(name)
    @name = name
    @position = 1
  end

  def move_piece(distance)
    return @position += distance
  end

  def fall_or_climb(snake_ladder)
    return @position = snake_ladder.end
  end


  def landed_on_snake_ladder(board)
    for snake_ladder in board.array_of_s_and_l
      if @position == snake_ladder.start
        return snake_ladder
      end
    end
    return nil
  end

end