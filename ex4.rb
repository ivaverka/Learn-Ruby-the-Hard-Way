# How many cars we have.
cars = 100
# How many people we can put in one car.
space_in_a_car = 4
# How many drivers we have.
drivers = 30
# How many passengers we have.
passengers = 90 
# How many cars cannot be driven because there are not enough drivers for them.
cars_not_driven = cars - drivers
# These cars can be driven because we have enough drivers for them.
cars_driven = drivers
# How many people we can transport in the cars that can be driven today (i.e. how many people we can transport today based on the availabilty of cars and drivers).
carpool_capacity = cars_driven * space_in_a_car
# How many people we will need to put in a car.
average_passengers_per_car = passengers / cars_driven


# We have 100 cars.
puts "There are #{cars} cars available."
# We have 30 drivers.
puts "There are only #{drivers} drivers available."
# 100 cars - 30 drivers = 70 cars that cannot be driven.
puts "There will be #{cars_not_driven} empty cars today."
# 30 cars * 4 spaces in a car
puts "We can transport #{carpool_capacity} people today."
# We have 90 passengers.
puts "We have #{passengers} to carpool today."
# 90 passengers / 30 cars driven.
puts "We need to put about #{average_passengers_per_car} in each car." 