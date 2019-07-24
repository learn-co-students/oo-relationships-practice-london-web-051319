class User
  include Helper
  def initialize(*args)
    vars = %w(name)
    super(vars, args)
  end

  def self.highest_pledge
    Pledge.all.max_by(&:amount).user
  end

  def pledges
    Pledge.all.select {|pledge| pledge.user == self}
  end

  def projects
    pledges.map(&:project)
  end

  def self.multi_pledger
    self.all.select {|user| projects.length > 1}
  end

  def self.project_creator
    Project.all.map(&:creator).uniq
  end
end
