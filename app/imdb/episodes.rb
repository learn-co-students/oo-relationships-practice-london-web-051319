class Episode
  include Helper
  def initialize(*args)
    vars = %w(name characters)
    args[1] ||= []
    super(vars, args)
  end

end
