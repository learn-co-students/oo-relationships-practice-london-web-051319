class Driver
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
		Ride.all.select{|ride| ride.driver == self}
	end

	def passengers
		rides.map{|ride| ride.passenger}.uniq
	end

	def total_mileage
		rides.map{|ride| ride.distance}.reduce(:+)
	end

	def self.mileage_cap(distance)
		self.all.select{|driver| driver.total_mileage > distance}
	end


end