require_relative('./player.rb')
require_relative('./piece.rb')
require_relative('./dice.rb')
require_relative('./snake_ladder.rb')
require_relative('./board.rb')
require_relative('./game.rb')

dice = Dice.new
piece1= Piece.new("Blue")
piece2= Piece.new("Green")
piece3= Piece.new("Red")
player1= Player.new("Bob", piece1)
player2= Player.new("Ross", piece2)
player3= Player.new("Richard", piece3)
array_of_players=[player1, player2,player3]
game = Game.new(array_of_players)
snake1 = SnakeLadder.new(43, 12)
snake2 = SnakeLadder.new(63, 47)
snake3 = SnakeLadder.new(21, 9)
ladder1 = SnakeLadder.new(3, 32)
ladder2 = SnakeLadder.new(11, 30)
ladder3 = SnakeLadder.new(49, 54)
array_s_and_l = [snake1, snake2, snake3, ladder1, ladder2, ladder3]
board= Board.new(64, array_s_and_l )

active_player = array_of_players[0]

while game.check_victory(active_player, board.size) == false do

  roll = dice.roll_dice
  active_piece = active_player.piece
  active_piece.move_piece(roll)
  if active_piece.landed_on_snake_ladder(board) != nil
    snake_or_ladder = active_piece.landed_on_snake_ladder(board)
    active_piece.fall_or_climb(active_piece.landed_on_snake_ladder(board))
    puts "#{active_player.name} moves from #{snake_or_ladder.start} to #{snake_or_ladder.end}"
  end
  if game.check_victory(active_player, board.size) == true
    break
  end
  active_player = game.next_player(active_player)
  
end

puts "#{active_player.name} wins!"
for player in array_of_players
#  piece = player.piece
#  final_position = piece.position
  puts "#{player.name} ended at square #{player.piece.position}"
end