# #### Actor
# - .most_characters
#   # - should return which actor has the most different characters played. (probably meryl streep)


class Actor

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
    Character.all.select do |character|
      character.actor == self
    end

   end

   def character_count
     characters.length
   end

   def self.most_characters
     all.max_by do |actor|
       actor.character_count
     end
   end



end
