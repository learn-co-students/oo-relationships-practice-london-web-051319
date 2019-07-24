require_relative "lib/users.rb"
require_relative "lib/projects.rb"
require_relative "lib/pledges.rb"
require "pry"

# Examples here
jack = Users.new(name: "Jack")
jill = Users.new(name: "Jill")
moana = Users.new(name: "Moana")
morpheus = Users.new(name: "Morpheus")

green = Projects.new(name: "GreenPeace World-Save", goal: 2000000)
choc = Projects.new(name: "Chocolate Teapots", goal: 30000)
red = Projects.new(name: "Red Pills", goal: 1)

# pledge1 = Pledges.new(project: "GreenPeace World-Save", user: "Moana")
# pledge2 = Pledges.new(project: "Red Pills", user: "Morpheus")

moana.make_pledge("GreenPeace World-Save", 200000)
morpheus.make_pledge("Red Pills", 20)

pledge3 = Pledges.new(name: "Donation", amount: 40000, project: red, users: jack)
pledge4 = Pledges.new(name: "Donation2", amount: 10000000, project: green, users: jill)


binding.pry
puts "exit"




