#require "./questions.rb"

class Scene
	def enter()
		puts "This class is empty."
		exit(1)
	end
end


class Engine
	
	def initialize(scene_map)
		@scene_map = scene_map
	end

def play()
		current_scene = @scene_map.opening_scene # is opening_scene from Map?
		last_scene = @scene_map.next_scene('finished') # is next_scene from Map?

		while current_scene != last_scene
		next_scene_name = current_scene.enter()	
		current_scene = @scene_map.next_scene(next_scene_name)
		end

		current_scene.enter()
	end
end




class Code
	def easy_question
	end

	def difficult_question
	end
end

class Death < Scene

	def enter()
		puts "You died. Good bye!"
		exit(1)
	end
end

class CentralCorridor < Scene
	#include Questions

	# I don't have to include all the questions because I don't want the answered questions to be displayed again
	# But if I want a random question to be returned, then I need to have a few.
	# I do think I need to put the questions in a module: maybe create a function that will  have a hash inside?
	
	

	def enter()
		puts "Welcome to Central Corridor"

		question = {
		'what is a variable?' => 'a', #name for something,
		'what is an array?' => 'b', #collection of something',
	}
		
		items = question.keys
		

		question.each_key do |key|
			puts items[rand(items.size)]
			#puts "Answer this question: #{key} >> "
			answer = $stdin.gets.chomp
			


			if answer == question[key]
				puts "This answer is right"
				return 'wooden'
			else
				puts "Wrong"
				return 'death'
			end
		end

		# TRYING RANDOM

		#random_question = rand(@@question.size[key]) #???



		#def Questions.next_question(question_name)
	
		#Questions.next_question(Questions) do |key|
			#puts "Now answer this: #{key}"
		#end
		
		#puts Questions.ask_question()
		

		# Questions.next_question@@questions) # should I add a while/for loop here so it iterates over the hash?
		# OR Should I include Questions in the Scene class and use Super in other classes and override to go to the next scene?

	
		# puts ">> "

		#answer = $stdin.gets.chomp # I am going to use answer from the Questions Module

		#if Questions::answer == "a name for something" # it is not working after I added Questions:: (working version: answer == "a name for something"). I THINK I NEED TO PUT THE IF STATEMENT in The module where the input will be verified.
			#puts "This answer is right"
			#return 'wooden'
		#else
			#puts "The answer is wrong"
			#return 'death'
		#end
	end
end


class Wooden < Scene
	#include Questions

	@@question = {'what is an array>' => 'a collection of something',
			'what is a variable' => 'a name for something',
		}

	def enter()
		puts "Welcome to the Wooden Room."


		items = @@question.keys


		@@question.each_key do |key|
			puts items[rand(items.length)]
			answer = $stdin.gets.chomp

			if answer == @@question[key]
			puts "Great! You can go to the next room."
			return 'central_corridor'
		else
			puts "You need to study more!"
			return 'death'
		end
		end
		

			



		
		# puts "You made it to the Wooden room. Welcome."
		# puts "Are you sure you know Ruby?"
		# puts "What is an array?"
		# puts ">> "

		# answer = $stdin.gets.chomp

		# if answer == "a collection of something"
			# puts "That's right. Good job"
		# else
			# puts "Oh, no."
			# return 'death'
		# end
	end
end


class Silver < Scene

	def enter()
		puts "Welcome to Silver room."
	end
end

class Gold < Scene

	def enter()
		puts "Welcome to Gold room."
	end
end

class Finished

	def enter()
		puts "Welcome to Finished."
	end
end

class Map
	@@scenes = {
		'death' => Death.new(),
		'central_corridor' => CentralCorridor.new(),
		'wooden' => Wooden.new(),
		'silver' => Silver.new(),
		'gold' => Gold.new(),
		'finished' => Finished.new(),

	}

	def initialize(start_scene)
		@start_scene = start_scene
	end

	def next_scene(scene_name)
		val = @@scenes[scene_name]
		return val
	end

	def opening_scene()
		return next_scene(@start_scene)
	end
end



a_map = Map.new('central_corridor') # I will start at the central corridor
a_game = Engine.new(a_map) # Engine.new(Map.new). This way Engine references Map (relates to Map)
a_game.play()