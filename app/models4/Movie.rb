# #### Movie
# - .most_actors
#   - should return the movie which has the most actors in it. this is so the studio knows never to hire that director again because he/she makes expensive movies

class Movie


  attr_accessor :name

  @@all = []

  def initialize(name)

   @name = name
   @@all << self
  end

  def self.all
    @@all
  end

  def characters
    CharacterAppearance.all.select do |character|
      character.appearance == self
    end.map do |appearance|
      appearance.character
    end
  end

  def actors
   characters.map do |character|
     character.actor
   end.uniq

  end

  def actor_count
    actors.length
  end

  def self.most_actors
    all.max_by do |movie|
      movie.actor_count
    end
  end


end
