puts "Let's practice everything."
# As far as I understand \n and \t do not work withing a string. I might be wrong.
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

# the <<END is a "heredoc". See the Student Questions.
# Why don't we just print/assign a lot of strings to the poem variable?
poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires  an explanation
\n\t\twhere there is none.
END

puts "--------------"
puts poem
puts "--------------"


five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

# I think, started is used here as an argument because it is used in the calculations below (ex, started * 500).
# In the scrip below we use start_point instead of started.
def secret_formula(started)
	jelly_beans = started * 500
	jars = jelly_beans / 1000
	crates = jars / 100
	return jelly_beans, jars, crates
end

puts secret_formula(10)
start_point = 10000
# I don't understand how we do it: do we assign our function to the 3 things (beans, jars and crates)?
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

# I don't understand why we do it because I don't see that it is reflected in the script output.
start_point = start_point / 10