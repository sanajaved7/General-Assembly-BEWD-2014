###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################
puts "Welcome to the fun secret game! This game was created by Sana Javed :)"
puts "What's your name?"
name = gets.chomp
puts "Hi #{name}!"
puts "Here's how to play: try to guess the super secret number! But be careful - you only have three guesses!!!"
def game(guess)
	if guess == 6
		puts "You win! 6 is the secret number!"
		return 'end'
	elsif guess > 6
		puts "Your guess was too high!"
		return 'continue'
	elsif guess < 6
		puts "Your guess was too low!"
		return 'continue'
	end
end
x = 3
while x > 0
	puts "What is your guess?"
	guess = gets.chomp.to_f
	c = game(guess) 
	if c == 'end'
		break
	end
	x -= 1
	puts "You have " + x.to_s + " guess(es) left"
	if x == 0
		puts "Sorry all of your guesses are up - you lost! The secret number was 6! Goodbye!"
	end
end



# 3.downto(1) do |x|
# 	answer = 6
# 	puts = "What's your first guess?"
# 	first_guess = gets.chomp
# 	if first_guess < answer:
# 		puts "Your guess what too low!"
# 		next
# 	if first_guess > answer: 
# 		puts "Your guess was too high!"
# 		next
# 	if first_guess == answer:
# 		puts "You win!"
# 		end
# 	puts = "What is your second guess?"
# 	second_guess = gets.chomp
# 	if second_guess < answer:
# 		puts "Your guess what too low!"
# 		next
# 	if second_guess > answer:
# 		puts "Your guess was too high!"
# 		next
# 	if second_guess == answer:
# 		puts "You win!"
# 		end
# 	puts = "What is your third (and final!) guess?"
# 	third_guess = gets.chomp
# 	if third_guess < answer:
# 		puts "Your guess was too low!"
# 		next
# 	if third_guess > answer:
# 		puts "Your guess was too high!"
# 		next
# 	if third_guess == answer:
# 		puts "You win!"
# 		end
# 		end
# 	end
# end



