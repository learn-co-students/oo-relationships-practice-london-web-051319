class Character
  include Helper
  def initialize(*args)
    vars = %w(name actor)
    super(vars, args)
  end

  def movie_appearances
    Movie.all.select{|movie| movie.characters.include?(self)}
  end

  def tv_appearances
    Show.all.select{|show| show.episodes.any?{|episode| episode.characters.include?(self)}}
  end

  def total_appearances
    movie_appearances + tv_appearances
  end

  def self.most_appearances
    all.max_by {|character| character.total_appearances.length}
  end
end
