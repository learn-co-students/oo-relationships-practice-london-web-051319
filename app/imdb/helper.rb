module Helper
  def self.included(klass)
    klass.instance_variable_set(:@all, [])
    klass.singleton_class.class_eval{attr_reader(:all)}
  end

  def initialize(vars, args)
    vars.each_with_index do |var, i|
      instance_variable_set("@#{var}", args[i])
      singleton_class.class_eval{attr_reader(var)}
    end

    self.class.all << self
  end

  def add_a_character(name, actor)
    @characters << Character.new(name, actor)
  end
end
