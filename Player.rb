class Player
  attr_reader :name, :mark
  attr_accessor :score
  @@markers = [:X, :O]

  def initialize name="[NO NAME]"
		@name = name
		@mark = @@markers.pop
  end

  def input
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
  end

end