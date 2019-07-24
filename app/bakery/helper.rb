module Helper
  #Intializes and "all" array where all instances of a class will be stored
  def self.included(klass)
    module.exec {@all = []}
    klass.singleton_class.send(:attr_reader, :all)
  end

  def initialize(vars, args)

    #Intializes and makes readable predefined instance variables
    vars.each_with_index do |var, i|
      instance_variable_set("@#{var}", args[i])
      self.send(:attr_reader, var.to_sym)
    end

    #Saves the instance in an all array
    self.class.all << self
  end
end
