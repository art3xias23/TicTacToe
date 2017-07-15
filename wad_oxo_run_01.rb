# Ruby code file - All your code should be located between the comments provided.

# Add any additional gems and global variables here
require 'sinatra'	
require 'data_mapper'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/wiki.db")


# The file where you are to write code to pass the tests must be present in the same folder.
# See http://rspec.codeschool.com/levels/1 for help about RSpec
require "#{File.dirname(__FILE__)}/wad_oxo_gen_01"

# Main program
module OXO_Game
	@input = STDIN
	@output = STDOUT
	$g=Game.new(@inputa, @outputa)
	g=Game.new(@input, @output)
	playing = true
	$playing = true
	input = ""
	menu = ""
	guess = ""
	$turn = 0
	win = 0
	game = ""
	number = ""
	i = ""
	v = ""
	$i = ""
	$v = ""
	looping =true 
	
	a=0
	choice = 0
	matrix = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
	$matrix = ["_", "_", "_", "_", "_", "_", "_", "_", "_"]
	$matrix1 = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
	noOfWins1 = 0
	noOfWins2  = 0
	noOfDraws = 0
	$noOfWins1 = 0
	$noOfWins2  = 0
	$noOfDraws = 0
	$noOfGames = 0

	
	

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
									g.setmatrixvalue(user_input-1,"X")
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
									puts "Overall score. Player 1(#{noOfWins1} won) :  Player 2 (#{noOfWins2} won) : Both (#{noOfDraws} drawn)"
									a = 0
									break
								else 
									
								end 
							end 
							
						
						else 

							noOfDraws +=1
							puts "This is a draw!"
							puts "Overall score. Player 1(#{noOfWins1} won) :  Player 2 (#{noOfWins2} won) : Both (#{noOfDraws} drawn)"

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
									puts "Overall score. Player 1 (#{noOfWins1} won) :  Player 2 (#{noOfWins2} won) : Both (#{noOfDraws} drawn)"
									a = 0
									break
								else 

								end 




							else
								 puts "player 2. Please select."
								 user_input = gets.chomp.to_i
								if g.getmatrixvalue(user_input-1) == 1
									g.setmatrixvalue(user_input-1,"X")
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
									puts "Overall score. Player 1 (#{noOfWins1} won) :  Player 2 (#{noOfWins2} won) : Both (#{noOfDraws} drawn)"
									a = 0
									break
								else 
									
								end 
							end 
							
						
						else 

							noOfDraws +=1
							puts "This is a draw!"
							puts "Overall score. Player 1(#{noOfWins1} won) : (#{noOfWins2} won) Player 2 : Both (#{noOfDraws} drawn)"

							a=0
							break

						
						end 
					end	
				when "9"
					g.finish
					exit
				end 
			end 

	
		
	# Any code added to command line game should be added above.
	
		exit	# Does not allow command-line game to run code below relating to web-based version
		
		
			
	end 
end
# End modules

# Sinatra routes

	# Any code added to web-based game should be added below.

	DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/wiki.db")

class User #set a class with the specified properties
	include DataMapper::Resource
	property :id, Serial
	property :username, Text, :required => true
	property :password, Text, :required => true
	property :date_joined, DateTime
	
end

DataMapper.finalize.auto_upgrade!

	def readFile(wiki) #define the method for reading a file and placing an input inside it
		info = ""
		file=File.open(wiki)
		file.each do |line|
			info = info + line #this adds to the text file without overwriting the original content
		end
		file.close #we always close the file so we do not leave memory in use
		$myinfo = info
	end

	get '/' do 
		erb :home
	end 

	get '/game' do
		erb :game
	end

	post '/game' do
		
		while $playing == true 
			if $turn < 9	
				if $turn % 2 ==0
					

					$innput = params[:guess].to_i
					$innput = $innput.to_i
					if $g.getmatrixvalueweb($innput-1) == 1
						$g.setmatrixvalueweb($innput -1, "O")
					else 

							$turn-=1
							
					end 			
					
					
				else 
					

					$innput2 = params[:guess].to_i
					$innput2 = $innput2.to_i
					if $g.getmatrixvalueweb($innput2-1) == 1
						$g.setmatrixvalueweb($innput2 - 1, "X")
					else 
							
							$turn-=1
							
					end 	
					
				end 
				 $turn+=1
				redirect '/game'
			end 
		end 

	end 




	get '/resetgame' do
		$noOfWins1 = 0
		$noOfWins2 = 0
		$noOfDraws = 0
		$noOfGames = 0
		$turn = 0
		$matrix = ["_", "_", "_", "_", "_", "_", "_", "_", "_"]
		erb :resetgame
	end 

	post '/resetgame' do
		
			while $playing == true 
				if $turn < 9	
					if $turn % 2 ==0
						

						$innput = params[:guess].to_i
						$innput = $innput.to_i
						if $g.getmatrixvalueweb($innput-1) == 1
							$g.setmatrixvalueweb($innput -1, "O")
						else 

								$turn-=1
								
						end 			
						
						
					else 
						

						$innput2 = params[:guess].to_i
						$innput2 = $innput2.to_i
						if $g.getmatrixvalueweb($innput2-1) == 1
							$g.setmatrixvalueweb($innput2 - 1, "X")
						else 
								
								$turn-=1
								
						end 	
						
					end 
					 $turn+=1
					redirect '/game'
				end 
			end 

		

	end

	get '/login' do
		erb :login
	end

	get '/logout' do
		$credentials = ['', '']
		redirect '/'
	end

	post '/login' do #how the log in is accomplished 
		$credentials = [params[:username],params[:password]] #specify which properties the credentials will occupy 
		@Users = User.first(:username => $credentials[0]) #looks for a username
		if @Users
			if @Users.password == $credentials[1]
				
				redirect '/'
			else
				$credentials =['','']
				redirect '/wrongaccount' #if the credentials are not identical to the ones specified on the previous statement
			end
		else
			$credentials = ['','']
			redirect '/wrongaccount'
		end
	
	
	end

	get '/noaccount' do
		erb :noaccount
	end

	get '/notfound' do
		erb :notfound
	end

	get '/denied' do
		erb :denied
	end

	get '/createaccount' do
		erb :createaccount
	end

	post '/createaccount' do
		n = User.new
		n.username = params[:username]
		n.password = params[:password]
		n.date_joined = Time.now
		if n.username == "Admin" and n.password == "Password"
			
		end
		n.save
		redirect '/login'
	end

	get '/admincontrols' do
		
		@list2 = User.all :order => :id.desc
		erb :admincontrols
	end

	get '/user/:uzer' do #identifies and authorizes the user or denies access
		@Userz = User.first(:username =>params[:uzer]) 
		if @Userz !=nil
			erb :profile
		else	
			redirect '/noaccount'
		end
	end

	put '/user/:uzer' do
		n = User.first(:username => params[:uzer]) 
		n.save
		redirect '/' 
	end

	get '/user/delete/:uzer' do
		
		n = User.first(:username => params[:uzer]) 
		if n.username == "Admin"
			erb :denied
		else
			n.destroy
			@list2 = User.all :order => :id.desc
			erb :admincontrols
		end
	end

	not_found do
		status 404
		redirect '/notfound'
	end


	# Any code added to web-based game should be added above.
 