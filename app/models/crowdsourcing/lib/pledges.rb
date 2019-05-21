# has one project, has one user

class Pledges

   attr_accessor :name, :amount, :project, :users

   @@all = []

   def self.all
      @@all
   end

   def initialize(name: "pledge", amount: , project: , users: )
      @name = name
      @amount = amount
      @project = project
      @users = []
      @users << users
      @@all << self
   end

end