require "Board"
require "Player"

describe Board do

  context 'with winning state' do

    before do
      @bd =  Board.new
      @bd.set_mark(0,0,:X)
      @bd.set_mark(0,1,:X)
      @bd.set_mark(0,2,:X)
    end

    it 'allows player to win' do
      expect(@bd.end_marker).to be(:X)
    end
  end
  
end