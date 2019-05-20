class Passenger
	attr_accessor :name
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def rides
		Ride.all.select{|ride| ride.passenger == self}
	end

	def drivers
		rides.map{|ride| ride.driver}.uniq
	end

	def total_distance
		rides.map{|ride| ride.distance}.reduce(:+) || 0
	end

	def self.premium_members
		self.all.select{|passenger| passenger.total_distance > 100}
	end

end
