ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure that there's 10 items
# Ira's code. I want to know how many items there are. It works:
# verify = stuff.length + more_stuff.length
# puts verify

# here it adds items to stuff untill it will have 10 items

while stuff.length != 10
	next_one = more_stuff.pop # it will return the last element in an array and remove it from an array
	puts "Adding: #{next_one}"
	stuff.push(next_one) # this will add the removed element from an array to stuff
	puts "There are #{stuff.length} items now."
end

# Ira: using for-loop
=begin
stuff.each do |x| 
	x = stuff.length
	x += 1
	break if x > 10
	next_one = more_stuff.pop
	stuff.push(next_one)
	puts "There are #{x} items now."
end
=end

puts "There we go #{stuff}"

# Ira: did a string stuff turned into an array?
puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1] # whoa! fancy
puts stuff.pop() # Ira: it didn't remove the last element from an array. Why?
puts stuff.join(' ') # Ira: looks like it joined it into a string
puts stuff[3..5].join("#")