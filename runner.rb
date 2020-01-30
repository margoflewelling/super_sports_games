require 'minitest/autorun'
require 'minitest/pride'
require './lib/games'
require './lib/event'

# Create a program that allows a User to interact with the Games through the command line
# Upon starting the program, the User should enter the year for the games
# The User can then create new Events and get a Summary of the Events

puts "Enter year of Game"
year = gets.chomp
Games.new(year)

puts "Let's add an event"
puts "What is the name of the event?"
name = gets.chomp
puts "How many people are in the event?"
participants = gets.chomp.to_i
ages = []
x = 1
while x <= participants
  puts "What is the age of participant # #{x}?"
  age = gets.chomp.to_i
  ages << age
  x += 1
end
require "pry"; binding.pry
