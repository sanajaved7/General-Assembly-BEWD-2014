#This is a program which helps people locate the contact information for their Elected Officials with the help of the Sunlight Foundation API

class Elected_Official
	require 'rest-client'
	require 'json'
	attr_accessor :zip_code

	def initialize (zip_code)
		@zip_code = zip_code
	end

#This method checks that the zipcode provided by the user 
#has the correct length and only has numbers
	def check_zipcode_validity
		if (zip_code =~ /\d{5}/) == 0
			#zip_code.length == 5 and 
			# !zip_code.include? "abcdefghijklmnopqrstuvwxyz!@#$%^&*()"
			puts 'Thanks for a valid zip code!'
			self.call_api
			self.parse_api
		else
			puts 'Sorry friend, that zipcode is not valid. Please try again!'
		end
	end

#This method calls the api from the Sunlight Foundation which provides the contact info for the elected officials
	def call_api
		puts "Getting info on elected officials for zipcode: #{zip_code}"
		@api_data_on_electeds = JSON.load RestClient.get "https://congress.api.sunlightfoundation.com/legislators/locate?zip=#{zip_code}&apikey=952d630dfb75498ab63de7a362a85335"
	end

#This method goes through the api and pulls out the relevant contact info we can use to get in touch with elected representatives!
	def parse_api
		@api_data_on_electeds["results"].map do |info|
			first_name = info["first_name"]
			last_name = info["last_name"]
			email = info["oc_email"]
			phone = info["phone"]
			twitter = info["twitter_id"]
		puts "Your elected official is #{first_name} #{last_name}. Their email is #{email} and you can call them at #{phone}. Also send them a tweet at @#{twitter}!"
	end
end
end
