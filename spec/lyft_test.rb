require 'require_all'
require_relative "../app/lyft/helper.rb"
require_all "app/lyft"

RSpec.describe "Lyft" do

  #Helper method
  let!(:create(klass, arr)) {arr.map! {|x| Object.const_get(klass).new(*x)}}

  classes = %w(Passenger Driver)

  #intial arguments for objects
  passengers = %w(Achilles Mycroft Ambrosina Esperanza Narcissa Philemon Ptolomy Eusebia Morgana)
  drivers = %w(Olivia Oliver Harry Amelia Isla Harry Jack Emily)

  #Create passengers and drivers (Better use it for mass production)
  hash = [passengers, drivers].each_with_index.reduce({}) do |hash, (args, i)|
    hash[classes[i]] = args
    hash
  end
  hash.each {|klass, args| create(klass, args)}


  #Make passagers go on rides
  100.times do
    Ride.new(drivers.sample, passengers.sample, rand(100) + 5)
  end


  describe 'Passenger #name' do
    it 'returns the name of a passenger' do
      expect(Passanger.all[0].name).to eq('Achilles')
    end
  end
end
