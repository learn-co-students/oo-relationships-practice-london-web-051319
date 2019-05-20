#
# #### Show
# - #on_the_big_screen
#   - should return TV shows that share the same name as a movie

class Show

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.on_the_big_screen
    movies = Movie.all.map do |movie|
      movie.name
    end

    all.select do |show|
      movies.include?(show.name)

    end
  end








end
