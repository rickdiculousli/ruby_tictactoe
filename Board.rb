class Board

	def initialize
		@board = [[],
							[],
							[]]
	end

	def reset
		@board = [[],
							[],
							[]]
	end

	def set_mark(column, row, mark) # input as index
		if @board[row][column].nil? && (0..2) === row && (0..2) ===column
			@board[row][column] = mark

			puts "			Put piece #{mark} on row: #{row+1} col: #{column+1}"
			true
		else
			puts "			Unable to put #{mark} on row: #{row+1} col: #{column+1}"
			false
		end
	end

	def get_win_mark
		mark = nil
		3.times do |i|
			if @board[i][0] == @board[i][1] && @board[i][1] == @board[i][2]
				mark = @board[i][0]
			elsif @board[0][i] == @board[1][i] && @board[1][i] == @board[2][i]
				mark = @board[0][i]
			end
		end

		if (@board[0][0] == @board[1][1] && @board[1][1] ==  @board[2][2]) ||
			 (@board[0][2] == @board[1][1] && @board[1][1] ==  @board[2][0])
			 mark = @board[1][1]
		end
		mark
	end

	def display
		str ="
		|------|------|------|
		|  #{@board[0][0]|| '*'}   | #{@board[0][1]|| '*'}    |  #{@board[0][2]|| '*'}   |
		|------|------|------|
		|  #{@board[1][0]|| '*'}   | #{@board[1][1]|| '*'}    |  #{@board[1][2]|| '*'}   |
		|------|------|------|
		|  #{@board[2][0]|| '*'}   | #{@board[2][1]|| '*'}    |  #{@board[2][2]|| '*'}   |
		|------|------|------|"
		
		puts str
	end

end