class Driver
  include Helper
  def initialize(*args)
    vars = %w(name)
    super(vars, args)
  end

  def rides; super(&:driver); end

  def passengers; rides.map(&:passenger).uniq; end

  def mileage; rides.map(&:distance).reduce(:+); end

  def self.mileage_cap(distance)
    all.select {|driver| driver.mileage > distance}
  end
end
