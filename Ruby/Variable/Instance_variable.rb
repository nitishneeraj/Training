class Customer
   def initialize(id, name, addr)
      @id = id
      @name = name
      @addr = addr
   end
   def display_details()
      puts "Customer id #@id"
      puts "Customer name #@name"
      puts "Customer address #@addr"
   end
end

# Create Objects
cust1 = Customer.new("1", "John", "Haryana,FBD")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

# Call Methods
cust1.display_details()
cust2.display_details()