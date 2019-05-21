class Movie
  include Helper
  def initialize(*args)
    vars = %w(name characters)
    args[1] ||= []
    super(vars, args)
  end

  def self.most_actors
    all.max_by {|movie| movie.characters.length}
  end

end
