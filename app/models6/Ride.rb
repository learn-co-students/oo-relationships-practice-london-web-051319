class Ride
	attr_reader :driver, :passenger, :distance
	@@all = []

	def initialize(driver, passenger, distance)
		@driver = driver
		@passenger = passenger
		@distance = distance.to_f
		@@all << self
	end

	def self.all
		@@all
	end

	def self.total_distance
		self.all.map{|ride| ride.distance}.reduce(:+)
	end

	def self.average_distance
		total_distance / self.all.length
	end

end