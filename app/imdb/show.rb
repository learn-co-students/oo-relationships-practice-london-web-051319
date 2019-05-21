class Show
  include Helper
  def initialize(*args)
    vars = %w(name episodes)
    args[1]||=[]
    super(vars, args)
  end

  def make_an_episode(name)
    @episodes << Episode.new(name)
  end
end
