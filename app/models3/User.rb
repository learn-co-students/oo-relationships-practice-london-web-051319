# #### User
# - .highest_pledge
#   - returns the user who has made the highest pledge
# - .multi_pledger
#   - returns all users who have pledged to multiple projects
# - .project_creator
#   - returns all users who have created a project
class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.highest_pledge
    all.max_by do |user|
      user.max_pledge || 0
    end
  end

  def self.multi_pledger
    all.select do |user|
      user.pledge_count > 1
    end
  end

  def self.project_creator
    all.select do |user|
      user.project_count > 0
    end
  end

  def max_pledge
    pledges.map do |pledge|
      pledge.amount
    end.max
  end

  def pledges
    Pledge.all.select do |pledge|
      pledge.user == self
    end
  end

  def projects
    Project.all.select do |project|
      project.user == self
    end
  end

  def pledge_count
    pledges.length
  end

  def project_count
    projects.length
  end



end
