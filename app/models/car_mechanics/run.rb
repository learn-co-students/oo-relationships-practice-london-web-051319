require_relative "lib/car.rb"
require_relative "lib/owner.rb"
require_relative "lib/mechanic.rb"
require "pry"

# Examples

howard = Owner.new(name: "Mr Howard")
reynolds = Owner.new(name: "Mrs Reynolds")

mechanic1 = Mechanic.new(name: "Gaz", specialty: "Motors")
mechanic2 = Mechanic.new(name: "Bob", specialty: "Hydraulics")

volvo = Car.new(make: "Volvo", model: "S60", registration: "TY70 8UG", classification: "Powerful", owner: howard, mechanic: mechanic1)
bentley = Car.new(make: "Bentley", model: "Flash", registration: "M4D3 0F$", classification: "Antique", owner: reynolds, mechanic: mechanic1)
porshe = Car.new(make: "Porshe", model: "Stallion", registration: "T00 F4ST", classification: "Swish", owner: reynolds, mechanic: mechanic2)


binding.pry
puts "end"
