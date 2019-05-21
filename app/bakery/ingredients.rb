class Ingredient
  include Helper
  def initialize(*args)
    vars = %w(name calories)
    super(vars, args)
  end

  def desserts
    Dessert.all.select{|dessert| dessert.ingredients.include?(self)}
  end

  def bakeries
    Bakery.all.select{|bakery| !(bakery.desserts && desserts).empty?}
  end

  def self.find_all_by_name(ingredient)
    all.select {|ingredient| ingredient.name.match?(ingredient)}
  end
end
