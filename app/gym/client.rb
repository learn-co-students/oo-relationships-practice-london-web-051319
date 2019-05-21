class Client
  include Helper
  def initialize(*args)
    vars = %w(name trainer location)
    super(vars, args)
  end

  def assign_trainer(trainer)
    @trainer = trainer
  end
end
