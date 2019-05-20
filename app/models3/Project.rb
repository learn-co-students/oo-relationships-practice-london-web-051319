# #### Project
# - .no_pledges
#   - returns all projects which have no pledges yet
# - .above_goal
#   - returns all projects which have met or exceeded their pledge goal
# - .most_backers
#   - returns the project with the highest number of backers
class Project

  attr_accessor :name, :user, :goal_amount

  @@all = []

  def initialize(name,user, goal_amount)
    @name = name
    @user = user
    @goal_amount = goal_amount
    @@all << self

  end

  def self.all
    @@all
  end

  def self.no_pledges
    all.select do |project|
      project.pledge_count == 0
    end
  end

  def self.above_goal
    all.select do |project|
      (project.pledge_total || 0) >= project.goal_amount
    end
  end

  def self.most_backers
    all.max_by do |project|
      project.backer_count
    end
  end

  def pledges
    Pledge.all.select do |pledge|
      pledge.project == self
    end
  end

  def backers
    pledges.map do |pledge|
      pledge.user
    end.uniq
  end

  def pledge_count
    pledges.length
  end

  def pledge_total
    pledges.map do |pledge|
      pledge.amount
    end.reduce(:+)
  end

  def backer_count
    backers.length
  end





end
