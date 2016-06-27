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

	def enter()
		puts "Welcome to Central Corridor"
		puts "here is a Ruby question:"
		puts "What is a variable?"
		puts ">> "

		answer = $stdin.gets.chomp

		if answer == "a name for something"
			puts "This answer is right"
			return 'wooden'
		else
			puts "The answer is wrong"
			return 'death'
		end
	end
end


class Wooden < Scene

	def enter()
		puts "You made it to the Wooden room. Welcome."
		puts "Are you sure you know Ruby?"
		puts "What is an array?"
		puts ">> "

		answer = $stdin.gets.chomp

		if answer == "a collection of something"
			puts "That's right. Good job"
		else
			puts "Oh, no."
			return 'death'
		end
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