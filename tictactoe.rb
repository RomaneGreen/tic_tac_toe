class Tictactoe

attr_accessor :board,:turn

puts  %{
  ||T |||i |||c |||- |||T |||a |||c |||- |||T |||o |||e ||
  ||__|||__|||__|||__|||__|||__|||__|||__|||__|||__|||__||
  |/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|
}


def initialize()

@board = [1,2,3,4,5,6,7,8,9]

@player = 'X'
@turn = 0

end

def play



puts
puts "\t \t   Welcome to tictactoe"
puts
puts "\t \t \t #{board[0]} | #{board[1]} | #{board[2]}"
puts " \t \t  \t ---------"
puts "\t \t \t #{board[3]} | #{board[4]} | #{board[5]}"
puts "\t \t \t ---------"
puts "\t \t \t #{board[6]} | #{board[7]} | #{board[8]}"
puts




until turn == 9

#player == 'O' ? player = 'X' : player = 'O'
turn.even? ?  player = 'X' : player = 'O'
puts "\t \t Player #{player} Enter a square (1-9)"
input = gets.chomp.to_i - 1

if input > 10 || input == -1
puts "\t \t Invaid,please enter a number between 1 and 9"

elsif board[input] == 'X' || board[input] == 'O'
puts "\t \t Square has already been taken!"

else
board[input] = "#{player}"
@turn += 1
draw
end

puts "\t \t \t #{board[0]} | #{board[1]} | #{board[2]}"
puts " \t \t  \t ---------"
puts "\t \t \t #{board[3]} | #{board[4]} | #{board[5]}"
puts "\t \t \t ---------"
puts "\t \t \t #{board[6]} | #{board[7]} | #{board[8]}"

if board[0] == board[1] && board[0] == board[2] ||
 board[3] == board[4] && board[3] == board[5] ||
 board[6] == board[7] && board[6] == board[8] ||
 board[0] == board[3] && board[0] == board[6] ||
 board[1] == board[4] && board[1] == board[7] ||
 board[2] == board[5] && board[2] == board[8] ||
 board[0] == board[4] && board[0] == board[8] ||
board[2] == board[4] && board[2] == board[6]


puts "\t \t Game over #{player} won"
break
end

end

#win_combination = [0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]



end

def draw
if turn == 9
p "Game Over! Draw!"

end
end


end

g = Tictactoe.new
g.play
