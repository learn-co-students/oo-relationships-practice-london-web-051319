class Dessert
  include Helper
  def initialize(*args)
    vars = %w(name ingredients)
    args[1]||=[]
    super(vars, args)
  end

  def calories
    ingredients.map(&:calories).reduce(:+)
  end
end
