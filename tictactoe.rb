class Tictactoe

puts  %{

  ||T |||i |||c |||- |||T |||a |||c |||- |||T |||o |||e ||
  ||__|||__|||__|||__|||__|||__|||__|||__|||__|||__|||__||
  |/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|

}

def play

board = [1,2,3,4,5,6,7,8,9]


puts "Welcome to tictactoe"
puts
puts " #{board[0]} | #{board[1]} | #{board[2]}"
puts "------------"
puts " #{board[3]} | #{board[4]} | #{board[5]}"
puts "------------"
puts " #{board[6]} | #{board[7]} | #{board[8]}"



player = 'X'
turn = 0

until turn == 9

#player == 'O' ? player = 'X' : player = 'O'
turn.even? ?  player = 'X' : player = 'O'
puts "Player #{player} Enter a square (1-9)"
input = gets.chomp.to_i - 1

if input > 10 || input == -1
puts "Invaid,please enter a number between 1 and 9"

elsif board[input] == 'X' || board[input] == 'O'
puts "Square has already been taken!"

else
board[input] = "#{player}"
turn += 1

end

puts " #{board[0]} | #{board[1]} | #{board[2]}"
puts "------------"
puts " #{board[3]} | #{board[4]} | #{board[5]}"
puts "------------"
puts " #{board[6]} | #{board[7]} | #{board[8]}"

if board[0] == board[1] && board[0] == board[2] ||
 board[3] == board[4] && board[3] == board[5] ||
 board[6] == board[7] && board[6] == board[8] ||
 board[0] == board[3] && board[0] == board[6] ||
 board[1] == board[4] && board[1] == board[7] ||
 board[2] == board[5] && board[2] == board[8] ||
 board[0] == board[4] && board[0] == board[8] ||
board[2] == board[4] && board[2] == board[6]


puts "Game over #{player} won"
break
end

end

#win_combination = [0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]

def self.draw
if board.all? == "X" || "O"
 puts "Game Over! Draw!"
end
end


end
end
g = Tictactoe.new
g.play
