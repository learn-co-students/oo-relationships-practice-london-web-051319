# Has many users, has many pledges
# pledges belong to projects

class Projects

   attr_accessor :name, :goal

   @@all = []

   def self.all
      @@all
   end

   def initialize(name: , goal:) 
      @name = name
      @goal = goal
      @@all << self
   end

   def self.pledges
      Pledges.all.select{|inst| inst.project}
   end

   def self.no_pledges
      a = self.pledges.map{|inst| inst.project}
      Projects.all.delete_if{|inst| a.include?(inst)}
   end

   def self.above_goal
      self.pledges.select{|inst| inst.amount >= inst.project[0].goal}
   end

end