require 'spec_helper'
require './tictactoe'


describe Tictactoe do
it 'runs' do
  expect(Tictactoe.new).to_not be_nil
end
end

describe Tictactoe do
it 'establishes boards' do
      g = Tictactoe::new.board
  expect(g).to eq  [1,2,3,4,5,6,7,8,9]
end
end

describe Tictactoe do
it 'turns' do
      g = Tictactoe::new.turn
  expect(g).to eql 0
end
end


describe Tictactoe do
it 'adds turns' do
      g = Tictactoe::new
  expect(g.turn.next).to equal 1
end
end

describe Tictactoe do
it 'adds turns' do
      g = Tictactoe::new.draw
  expect(g).to eq false
end
end

describe Tictactoe do
it 'adds turns' do
       g = Tictactoe::new.turn.even?
  expect(g).to eq true
end
end

# describe Tictactoe do
# it 'adds turns' do
#     g =  Tictactoe::new.turn == 9
#
#   expect(g).to eq 'K'
# end
# end
