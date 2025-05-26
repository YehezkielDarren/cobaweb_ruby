puts "Hello World!"
puts "This is a test script."

# This is for commenting out code
# puts "This line is commented out and won't run."

#  This is a multi-line comment
=begin
This is a multi-line comment.
It can span multiple lines.
You can use it to explain complex logic or provide detailed documentation.
=end


# The following line prints a message to the console
puts "This line will execute and print this message."
# You can also use string interpolation
name = "Ruby"
puts "Hello, #{name}!"
# This is a simple Ruby script demonstrating basic syntax and comments.
# You can define methods in Ruby
def greet(name)
  puts "Hello, #{name}!"
end

# Call the method with an argument
greet("Alice")

# You can also define classes in Ruby
class Person
  attr_accessor :name # Define an attribute accessor for name
  attr_accessor :age # Define an attribute accessor for age
  def age=(age) # Setter method for age
    @age = age
  end

  def age # Getter method for age
    @age
  end
  def name=(name) # Setter method for name
    @name = name
  end

  def name # Getter method for name
    @name
  end

  def initialize(name,age) # Initialize method
    @name = name
    @age = age
  end

  def initialize(name) # Overloaded initialize method
    @name = name
    @age = 0 # Default age if not provided
  end

  def initialize()
    @name = "Unknown"
    @age = 0
  end

  def introduce
    puts "Hi, my name is #{@name}."
  end

  def tranversing_name()
    @name.each_char do |char|
      puts char
    end
  end
end

# Create an instance of the Person class
bob = Person.new("Bob")
bob.introduce




# Ruby supports blocks and iterators
[1, 2, 3].each do |number|
  puts "Number: #{number}"
end

# This script demonstrates basic Ruby features including comments, methods, classes, and blocks.
# You can also use conditionals in Ruby
if person.name == "Bob"
  puts "#{person.name} is a person."
else
  puts "#{person.name} is not a person."
end