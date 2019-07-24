# Can create or back projects.
# Pledges belong to users

require "pry"

class Users

   attr_accessor :name, :projects, :pledges

   @@all = []

   def self.all
      @@all
   end

   def initialize(name: )
      @name = name
      @@all << self
   end

   def create_project(project_name )
      Project.new(name: "#{project_name}", users: self.name)
   end

   def make_pledge(project_name, amount)
      proj = Projects.all.select{|inst| inst.name == project_name}
      Pledges.new(project: proj, users: self, amount: amount)
   end

   def pledges
      Pledges.all.select{|inst| inst.users[0] == self}
   end

      # def projects

      # end

end

#<Users:0x00007fc3beb3e8c0 @name="Jack">,
 #<Users:0x00007fc3beb3e820 @name="Jill">,
 #<Users:0x00007fc3beb3e758 @name="Moana">,
 #<Users:0x00007fc3beb3e6b8 @name="Morpheus">]