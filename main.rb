require './player'
require './question'
require './game'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

game = Game.new(player1, player2)

while game.players[0].life > 0 && game.players[1].life > 0 do

  question = Question.new
  print "#{game.current_player.name}: #{question.gen_question}"
  answer = question.answer

  input = gets.chomp.to_i

  if (input != answer)
    game.subtract_life
  end

  game.report_life

  game.change_player

end