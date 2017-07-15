# Ruby code file - All your code should be located between the comments provided.

# Add any additional gems and global variables here
require 'sinatra'		

# The file where you are to write code to pass the tests must be present in the same folder.
# See http://rspec.codeschool.com/levels/1 for help about RSpec
require "#{File.dirname(__FILE__)}/wad_oxo_gen_01"

# Main program
module OXO_Game
	@input = STDIN
	@output = STDOUT
	g = Game.new(@input, @output)
	playing = true
	input = ""
	menu = ""
	guess = ""
	turn = 0
	win = 0
	game = ""
	number = ""
	i = ""
	v = ""
	looping =true 
	
	a=0
	choice = 0
	matrix = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
	noOfWins1 = 0
	noOfWins2  = 0
	noOfDraws = 0
	

	@output.puts 'Enter "1" runs game in command-line window or "2" runs it in web browser.'
	game = @input.gets.chomp
	if game == "1"
		@output.puts "Command line game"
	elsif game == "2"
		@output.puts "Web-based game"
	else
		@output.puts "Invalid input! No game selected."
		exit
	end
		
	if game == "1"
		
	# Any code added to command line game should be added below.

g.start

g.created_by

g.student_id

		
		
		
			while playing == true
				g.displaymenu
				
				puts "please select an option: "
				choice =@input.gets.chomp
		
				case choice 
				when "2"
			
				g.clearmatrix
				noOfWins1 = 0
				noOfWins2 = 0
				noOfDraws = 0
				g.displaykey(matrix)
					while looping ==true 
				
						if a <9 
						
							if a % 2== 0

								puts "Player one. Please select: "
								user_input = gets.chomp.to_i 
								if g.getmatrixvalue(user_input-1) ==1
									g.setmatrixvalue(user_input-1,"O")
									g.displaymatrix
									puts "A is #{a}"
									a+=1

								else 
									puts "Please select another number"
									g.displaymatrix
									

								end 
								if g.checkwinner == 1 then
									
									g.displaymatrix
									puts "Player 1 wins!"
									noOfWins1+=1
									puts "Overall score. Player 1 (#{noOfWins1} won) : Player 2 (#{noOfWins2} won)  : Both (#{noOfDraws} drawn)"
									a = 0
									break
								else 

								end 




							else
								 puts "player 2. Please select."
								 user_input = gets.chomp.to_i
								if g.getmatrixvalue(user_input-1) == 1
									g.setmatrixvalue2(user_input-1,"X")
									g.displaymatrix
									puts "A is: #{a}" 
									a+=1
									
								else 
									
									g.displaymatrix
									puts "Please select another number"
								end 
								if g.checkwinner == 2 then
									

									g.displaymatrix
									puts "Player 2 wins!"

									noOfWins2 +=1
									puts "Overall score. Player 1(#{noOfWins1} won) : (#{noOfWins2} won) Player 2 : {#{noOfDraws} drawn"
									a = 0
									break
								else 
									
								end 
							end 
							
						
						else 

							noOfDraws +=1
							puts "This is a draw!"
							puts "Overall score. Player 1(#{noOfWins1} won) : (#{noOfWins2} won) Player 2 : {#{noOfDraws} drawn"

							a=0
							break

						
						end 
					end 
				
				when "1"
				g.clearmatrix
				g.displaykey(matrix)

					while looping ==true
				
						if a <9 
						
							if a % 2== 0

								puts "Player one. Please select: "
								user_input = gets.chomp.to_i 
								if g.getmatrixvalue(user_input-1) ==1
									g.setmatrixvalue(user_input-1,"O")
									g.displaymatrix
									puts "A is #{a}"
									a+=1

								else 
									
									g.displaymatrix
									puts "Please select another number"

								end 
								if g.checkwinner == 1 then
									g.displaymatrix
									puts "Player 1 wins!"
									noOfWins1+=1
									puts "Overall score. Player 1(#{noOfWins1} won) : (#{noOfWins2} won) Player 2 : {#{noOfDraws} drawn"
									a = 0
									break
								else 

								end 




							else
								 puts "player 2. Please select."
								 user_input = gets.chomp.to_i
								if g.getmatrixvalue(user_input-1) == 1
									g.setmatrixvalue2(user_input-1,"X")
									g.displaymatrix
									puts "A is: #{a}" 
									a+=1
									
								else 
									
									g.displaymatrix
									puts "Please select another number"
									
								end 
								if g.checkwinner == 2 then
									

									g.displaymatrix
									puts "Player 2 wins!"
									noOfWins2 +=1
									puts "Overall score. Player 1(#{noOfWins1} won) : (#{noOfWins2} won) Player 2 : {#{noOfDraws} drawn"
									a = 0
									break
								else 
									
								end 
							end 
							
						
						else 

							noOfDraws +=1
							puts "This is a draw!"
							puts "Overall score. Player 1(#{noOfWins1} won) : (#{noOfWins2} won) Player 2 : {#{noOfDraws} drawn"

							a=0
							break

						
						end 
					end	
				when "9"
					g.finish
					exit
				end 
			end 

	elsif game==2
		puts "Heeeey"
	# Any code added to command line game should be added above.
	
		exit	# Does not allow command-line game to run code below relating to web-based version
	end
	end
# End modules

# Sinatra routes

	# Any code added to web-based game should be added below.



	# Any code added to web-based game should be added above.
 