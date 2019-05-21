class Ride
  include Helper
  def initialize(*args)
    args[2] = args[2].to_f
    vars = %w(driver passenger distance)
    super(vars, args)
  end

  def self.average_distance
    all.map(&:distance).reduce(:+) / all.length
  end
end
