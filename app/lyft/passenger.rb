class Passenger
  include Helper
  def initialize(*args)
    vars = %w(name)
    super(vars, args)
  end

  def rides; super(&:passenger); end

  def drivers; rides.map(&:driver).uniq; end

  def total_distance
    rides.map(&:distance).reduce(:+)
  end

  def self.premium_members
    all.select{|passenger| passenger.total_distance > 100}
  end
end
