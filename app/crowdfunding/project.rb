class Project
  include Helper
  def initialize(*args)
    vars = %w(name goal creator)
    super(vars, args)
  end

  def pledges
    Pledges.all.select {|pledge| pledge.project == self}
  end

  def self.no_pledges
    self.all.select {|project| project.pledges.empty?}
  end

  def total_pledged
    pledges.map(&:amount).reduce(:+)
  end

  def self.above_goal
    self.all.select {|project| project.total_pledged >= @goal}
  end

  def self.most_backers
    self.class.all.max_by {|project| project.pledges.map(&:user).uniq.length}
  end
end
