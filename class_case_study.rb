class Customer
	@@no_of_customers = 0 # this is a class variable
	def initialize(id, name, addr) # when we creat an object, it will have parameters (id, name, address)
		@cust_id = id # instance variable, within a class
		@cust_name = name
		@cust_address = addr
	end

# this is a method of a Class
	def display_details()
		puts "Customer id #@cust_id"
		puts "Customer name #@cust_name"
		puts "Customer address #@cust_address"
	end

# this is a method of a Class
	def total_no_of_customers()
		@@no_of_customers += 1
		puts "Total number of customers #@@no_of_customers"
	end
end

# Create objects of the Customer class
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("01", "Poul", "New Empire road, Khandala")

# Call methods of the Class by using the two objects
cust1.display_details()
cust1.total_no_of_customers()
cust2.display_details()
cust2.total_no_of_customers()
cust2.total_no_of_customers()