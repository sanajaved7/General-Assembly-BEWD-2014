
"""This program allows a user to enter their 5-digit zipcode 
to receive their elected officials 
name, phone number, email, and twitter handle! """

require './ClassElectedOfficial'

while true
	puts "Welcome to the find your elected official program!"
	puts "To begin, enter your 5-digit zip code."
	zip_code = gets.chomp
	instance = Elected_Official.new (zip_code)
	instance.check_zipcode_validity
	puts "Are you done? (y/n)"
	answer = gets.chomp
	if answer == "y"
		break
	end
end
