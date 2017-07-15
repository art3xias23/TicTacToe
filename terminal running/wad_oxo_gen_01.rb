# Ruby code file - All your code should be located between the comments provided.

# Main class module
module OXO_Game
	# Input and output constants processed by subprocesses. MUST NOT change.
	GOES = 5
	NOUGHT = 0
	CROSS = 1

	class Game
		attr_reader :guess, :matrix, :player1, :player2, :template, :input, :output, :turn, :turnsleft, :winner, :played, :score, :resulta, :resultb, :guess
		attr_writer :guess, :matrix, :player1, :player2, :template, :input, :output, :turn, :turnsleft, :winner, :played, :score, :resulta, :resultb, :guess
		
		def initialize(input, output)
			@input = input
			@output = output
			@played = 0
			@score =0
			@y = " "

		end
		
		def getguess
			guess = @input.gets.chomp.upcase
		end
		
		def storeguess(guess)
			if guess != ""
				@resulta = @resulta.to_a.push "#{guess}"
			end
		end


		# Any code/methods aimed at passing the RSpect tests should be added below.
	 
	def start 
	 @output.puts "Welcome to Noughts and Crosses!"
	 @output.puts "Created by:#{created_by}"
	 @output.puts "StudentID: #{student_id}"
	 @output.puts "Starting game..."
	 @output.puts "Player 1: 0 and Player 2: 1"

	
	end
	
	def created_by
		 "Konstantin Milchev"
	end 


	def student_id
		51663558
	end 

	def setplayer1
		@player1 = 0
	end

	def setplayer2
		@player2 = 1
	end 

	def clearmatrix
		 @matrix = ["_", "_", "_", "_", "_", "_", "_", "_", "_"]
	end

	def getmatrixvalue(value)
		if @matrix[value] == "_"
			@y = 1
		else 
			@y = 2
		end
	end

	def setmatrixvalue(i, v)
			@matrix[i] = v
 	 		  #the matrix needs to be given a number of the field in the matrix and the value of that field
	 end

	  def setmatrixvalue2(i, v)
	  	
	  		
			@matrix[i] = "X" #the matrix needs to be given a number of the field in the matrix and the value of that field
	 end


	 def displaykey(matrix)
	 	@output.puts "Table key:\n|#{matrix[0]}|#{matrix[1]}|#{matrix[2]}|\n|#{matrix[3]}|#{matrix[4]}|#{matrix[5]}|\n|#{matrix[6]}|#{matrix[7]}|#{matrix[8]}|\n"
	end 

	def displaymatrix
	 	@output.puts "Table status:\n|#{matrix[0]}|#{matrix[1]}|#{matrix[2]}|\n|#{matrix[3]}|#{matrix[4]}|#{matrix[5]}|\n|#{matrix[6]}|#{matrix[7]}|#{matrix[8]}|\n"
	end 

	def finish
		@output.puts "Finishing game..."
	end

	def displaymenu
		@output.puts "Menu: (1)Start | (2)New | (9)Exit\n"
	end 

	def checkwinner
		@winner=nil #check whether the winner is clear 

	 	if @matrix[0] == "O" && @matrix[1] == "O" && @matrix[2] == "O" then 
	 		@winner = 1 #checks top row
	 	elsif @matrix[3] == "O" && @matrix[4] == "O" && @matrix[5] == "O" then 
	 		@winner = 1 #checks middle row
	 	elsif @matrix[6] == "O" && @matrix[7] == "O" && @matrix[8] == "O" then
			@winner = 1 #checks bottom row
		elsif @matrix[0] == "O" && @matrix[3] == "O" && @matrix[6] == "O" then
			@winner = 1 #checks left column
		elsif @matrix[1] == "O" && @matrix[4] == "O" && @matrix[7] == "O" then
			@winner = 1 #checks middle column 
		elsif @matrix[2] == "O" && @matrix[5] == "O" && @matrix[8] == "O" then
			@winner = 1 #checks right column
		elsif @matrix[2] == "O" && @matrix[4] == "O" && @matrix[6] == "O" then
			@winner = 1 #checks up diagonal
		elsif @matrix[0] == "O" && @matrix[4] == "O" && @matrix[8] == "O" then
			@winner = 1 #checks down diagonal
		

		elsif @matrix[0] == "X" && @matrix[1] == "X" && @matrix[2] == "X" then
			@winner = 2 #checks down diagonal
		elsif @matrix[3] == "X" && @matrix[4] == "X" && @matrix[5] == "X" then
			@winner = 2
		elsif @matrix[6] == "X" && @matrix[7] == "X" && @matrix[8] == "X" then
			@winner = 2
		elsif @matrix[0] == "X" && @matrix[3] == "X" && @matrix[6] == "X" then
			@winner = 2
		elsif @matrix[1] == "X" && @matrix[4] == "X" && @matrix[7] == "X" then
			@winner = 2
		elsif @matrix[2] == "X" && @matrix[5] == "X" && @matrix[8] == "X" then
			@winner = 2
		elsif @matrix[0] == "X" && @matrix[4] == "X" && @matrix[8] == "X" then
			@winner = 2
		elsif @matrix[2] == "X" && @matrix[4] == "X" && @matrix[6] == "X" then
			@winner = 2
		else 
			@winner = nil
		

		end

	end
		# Any code/methods aimed at passing the RSpect tests should be added above.
	end 
	
end


