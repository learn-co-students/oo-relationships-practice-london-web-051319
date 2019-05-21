class Actor
  include Helper
  def initialize(*args)
    vars = %w(name)
    super(vars, args)
  end

  def characters
    Character.all.select {|character| character.actor == self}
  end

  def self.most_characters
    all.max_by {|actor| actor.characters.length}
  end

  def play_a_character(character)
    Character.new(character, self)
  end
end
