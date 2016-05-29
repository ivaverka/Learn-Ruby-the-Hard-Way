print "How much are you planning to inverst? "
# to_f gives me more numbers after 0. - fractional
number = gets.chomp.to_f

divident = number * 0.1
puts "If you invest #{number} today, a year later you will earn #{divident}."