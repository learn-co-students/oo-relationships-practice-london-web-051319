class Trip
  include Helper
  attr_reader :listing, :guest
  def initialize(*args)
    #Here you can define the list of variables (order matters!)
    vars = %w(listing guest)
    super(vars, args)
  end
end
