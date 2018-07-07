require 'io/console'

class Player
  attr_reader :name, :mark
  attr_accessor :score
  @@markers = [:X, :O]

  def initialize name="[NO NAME]"
		@name = name
		@mark = @@markers.pop
  end

  def input
  	puts "Choose spot"
  	input = STDIN.getch
  	exit(1) if input == "\u0003"
  	input = input.to_i
  	until (1..9) === input
  		puts "Please choose a valid spot"
  		input = STDIN.getch
  		exit(1) if input == "\u0003"
  		input = input.to_i
  	end

  	output = case input
  		when 1 then [0,0]
  		when 2 then [1,0]
  		when 3 then [2,0]
  		when 4 then [0,1]
  		when 5 then [1,1]
  		when 6 then [2,1]
  		when 7 then [0,2]
  		when 8 then [1,2]
  		when 9 then [2,2]
  		end

  	output
=begin
 		puts "Choose row"
		row = gets.chomp.to_i
		until (1..3) === row
		  puts "Choose valid row"
	 	 row = gets.chomp.to_i
		end

		puts "Choose column"
		column = gets.chomp.to_i
		until (1..3) === column
	  	puts "Choose valid column"
	  	column = gets.chomp.to_i
		end
		[column -1, row - 1] #As indexes/ column is outer array, row is inner array
=end
  end

end