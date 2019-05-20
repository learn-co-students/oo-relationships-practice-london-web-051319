class CharacterAppearance

  attr_accessor :character, :appearance

  @@all = []
  def initialize(character, appearance)

    @character = character
    @appearance = appearance
    @@all << self
  end

  def self.all
    @@all
  end

  

end
