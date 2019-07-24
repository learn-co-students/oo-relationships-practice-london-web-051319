class Pledge
  include Helper
  def initialize(*args)
    vars = %w(amount user project)
    super(vars, args)
  end
end
