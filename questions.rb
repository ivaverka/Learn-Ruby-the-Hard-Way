module Questions # I need to think how to make it ask a question check the answer (done) and then GO TO THE RIGHT ROOM BASED ON THE ANSWER.
	# SHould I put the logic in the Scene Class and use super in other classes or Should I put the Logic inside this module?
	# Because now it will only iterate over keys and values and it will go to 'death' only when the answer is wrong.
	# !!!Should I put in my class this module and logic: if answer is right, go to the next room?
	# Do I need this module at all? What if I put @@questions into the Map class, next_question - within each class?

	@@questions = {
		'WHAT IS A VARIABLE' => "a name for something",
		'WHAT IS AN ARRAY' => "a collection of something",
	}


	def Questions.next_question(question_name)
		#puts "ASKING QUESTION"
		
		@@questions.each_key do |key| 
			puts "My question is #{key} >>"
			answer = $stdin.gets.chomp

			if  answer == @@questions[key] # I am not sure how/why it is working but it is working :-)
				puts "This answer is right"
			else
				puts "Wrong"
				return 'death'
			end
		end

	end

end