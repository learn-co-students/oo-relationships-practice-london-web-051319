class Bakery
  include Helper
  def initialize(*args)
    vars = %w(name desserts)
    args[1]||=[]
    super(vars, args)
  end

  def ingredients
    desserts.map(&:ingredients).flatten.uniq
  end

  def average_calories
    (desserts.map(&:calories)reduce(:+) / desserts.length.to_f).round
  end

  def shopping_list
    ingredients.map(&:name)
  end
end
