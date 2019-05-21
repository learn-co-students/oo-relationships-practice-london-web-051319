module Helper
  def self.include(klass)
    klass.module_exec {@all = []}
    klass.singleton_class.send(:attr_reader, :all)
  end

  def initialize(vars, args)
    vars.each_with_index do |var|
      instance_variable_set("@#{var}", args[i])
      singleton_class.class_eval{attr_reader(var)}
    end

    self.class.all << self
  end
end
