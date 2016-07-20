class Lexicon

	#def initialize(direction)
		#@direction = direction
		#@sentence = []
	#end
	# I think an initialie function with (diractions, verbs, nouns)
	def scan(direction)
	
		first_word = ['verb', 'go']
		second_word = ['direction', 'north']
		third_word = ['direction', 'west']
		sentence = [first_word, second_word, third_word]
		
		puts "What direction do you want to go?"
		input = $stdin.gets.chomp
		words = input.split

		if words.include?('north')
			return sentence
		else
			puts "Error"
		end

		#sentence.push(words)


		# The scanner will take a string of raw input from a user
		# and return a sentence
		# that's composed of an array of arrays with the (TOKEN, WORD) pairings
	end
end