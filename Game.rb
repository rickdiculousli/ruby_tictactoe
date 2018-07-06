require './Player.rb'
require './Board.rb'

class Game

	def initiallize
	end

	def start
		@board = Board.new
		setup_players
		run_game
	end
	def show
		@board
	end

	private
		def setup_players
			puts "			First player, What is your name?"
			name_1 = gets.chomp
			puts "			Second player, What is your name?"
			name_2 = gets.chomp
			@player_1 = Player.new(name_1)
			@player_2 = Player.new(name_2)

			puts "
			OK!
			#{@player_1.name}, you have the #{@player_1.mark}!
			#{@player_2.name}, you have the #{@player_2.mark}!"
		end

		private
			def run_game
				case rand(0..1)
				when 0
					curr_player = @player_1
					wait_player = @player_2
				when 1
					curr_player = @player_2
					wait_player = @player_1
				end

				loop do
					puts "It's your turn, #{curr_player.name}!"
					@board.display

					inputs = curr_player.input
					set_success = @board.set_mark(inputs[0], inputs[1], curr_player.mark)  #colummn then row
					redo unless set_success
					break unless @board.get_win_mark.nil?

					curr_player, wait_player = wait_player, curr_player
				end
				puts "			CONGRATULATIONS TO #{curr_player.name.upcase}, YOU WON"
				puts "			Input any key to play again , or Ctrl + C to quit"
				temp = gets

				@board.reset
				run_game

			end
end

new_game = Game.new
new_game.start