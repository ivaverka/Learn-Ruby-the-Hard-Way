print "What is your name? "
name = gets.chomp

puts "Hello" + "," + " " + name + "." + " " "\nI would like to ask you a few questions."

print "When were you born? "
year_of_birth = gets.chomp.to_i
print "What year is it now? "
current_year = gets.chomp.to_i

puts "You are #{current_year - year_of_birth} old."
puts "So, your name is #{name} and you are #{current_year - year_of_birth}."

print "Is that correct? "
confirm = gets.chomp
puts "You said #{confirm}"
