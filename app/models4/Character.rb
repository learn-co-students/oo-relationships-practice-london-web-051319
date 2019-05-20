# #### Character
# - #most_appearances
#   - should return which character of film/television appears in the most films or tv shows

class Character

  attr_accessor :name, :actor

  @@all = []

  def initialize(name, actor)
    @name = name
    @actor = actor
    @@all << self
  end

  def self.all
    @@all
  end


  def appearances
    CharacterAppearance.all.select do |appearance|
      appearance.character == self
    end
  end

  def appearance_count
    appearances.length
  end


  def self.most_appearances
    all.max_by do |character|
      character.appearance_count
    end
  end



end
