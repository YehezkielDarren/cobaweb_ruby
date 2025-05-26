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
  attr_accessor :name
  attr_accessor :age

  def initialize(name,age) # Initialize method
    @name = name
    @age = age
  end

  def introduce
    puts "Hi, my name is #{@name}."
  end
end

# Create an instance of the Person class
person = Person.new("Bob")
# Call the introduce method
person.introduce

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