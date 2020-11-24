require_relative '../config/environment.rb'
require 'pry'

l1 = Lifter.new("Chunk", 500)
l2 = Lifter.new("Gary", 100)
l3 = Lifter.new("Barb", 560)
l4 = Lifter.new("Ned", 200)

g1 = Gym.new("24 Hr Fitness")
g2 = Gym.new("The Place")
g3 = Gym.new("Dana's")

m1 = Membership.new(g1, l2, 50)
m2 = Membership.new(g1, l1, 75)
m3 = Membership.new(g3, l4, 44)
m4 = Membership.new(g4, l1, 60)
m5 = Membership.new(g2, l3, 53)
m6 = Membership.new(g4, l2, 30)

binding.pry

puts "Gains!"