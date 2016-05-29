module Dict
	def Dict.new(num_buckets = 256)
		# Initializes a Dict with the given number of buckets.
		aDict = [] # empty array
		(0..num_buckets).each do |i| # for-loop from 0 to 256
			aDict.push([]) # are we pushing/adding an empty array?
		end # this is the end of a for-loop

		return aDict # return is optional
	end # this is the end of the Dict.new method

	def Dict.hash_key(aDict, key)
		# Given a key this will create a number and then convert it to 
		# an index for the aDict's buckets.
		puts "HASH #{key}=#{key.hash}"
		return key.hash % aDict.length # I don't understand % here (index divided by 256 = the remainder?)
	end

	def Dict.get_bucket(aDict, key)
		# Given a key, find the bucket where it would go.
		bucket_id = Dict.hash_key(aDict, key)
		return aDict[bucket_id]
	end

	def Dict.get_slot(aDict, key, default = nil)
		# Returns the index, key, and value of a slot found in a bucket.
		bucket = Dict.get_bucket(aDict, key)

		bucket.each_with_index do |	kv, i|
			k, v = kv
			if key == k
				return i, k, v
			end
		end

		return -1, key, default
	end

	def Dict.get(aDict, key, default = nil)
		# Gets the value in a bucket for the given key, or the default.
		i, k, v = Dict.get_slot(aDict, key, default = default)
		return v
	end

	def Dict.set(aDict, key, value)
		# Sets the key to the value, replacing any existing value.
		bucket = Dict.get_bucket(aDict, key)
		i, k, v = Dict.get_slot(aDict, key)

		if i >= 0 
			bucket[i] = [key, value]
		else
			bucket.push([key, value])
		end
	end

	def Dict.delete(aDict, key)
		# Deletes the given key from the Dict.
		bucket = Dict.get_bucket(aDict, key)

		(0..bucket.length).each do |i|
			k, v = bucket[i]
			if key == k
				bucket.delete_at(i)
				break
			end
		end
	end

# my assert code. It keeps saying `<main>': undefined method `assert' for Dict:Module (NoMethodError)
# It is working now bacause I needed to use Dict. before assert => Dict.assert
	def Dict.assert(key, value)
		unless key == value
			puts "ERROR ERROR ERROR"
		end
	end


	def Dict.list(aDict)
		# Prints out what is in the Dict.
		aDict.each do |bucket|
			puts bucket
		end
	end

# creating a dump function that is like list but which dumps the full contents of every bucket so you can debug it
# I am not satisfied with how it works: I would like to add indexes => 
# this way I will have the full contents of each bucket
# Or am I wrong?
	def Dict.dump(aDict)
		aDict.each do |bucket|
			if bucket
				bucket.each {|i, k, v| puts i, k, v}
			end
		end
	end
end
