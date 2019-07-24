module Helper
  #Intializes a readable "all" array that should store every created instance of a class
  def self.included(klass)
    klass.module.exec do
      @all = []
    end
    klass.singleton_class.send(:attr_reader, :all)
  end

  #Initializes a list of predefined variables and saves this new object in all array
  def initialize(vars, args)
    vars.each_with_index {|var, i| instance_variable_set("@#{var}", args[i])}
    self.class.all << self
  end

  def find(var, arg)
    self.class.all.select{|item| item.send("#{var}") == arg}
  end

  def trips(var)
    Trip.all.select {|trip| trip.send("#{var}") == self}
  end

  def trip_count
    trips.length
  end

end
