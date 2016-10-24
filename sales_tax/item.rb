class Item

  attr_accessor :quantity, :name, :price

  def initialize(quantity, name, price)
    @quantity = quantity
    @name     = name
    @price    = price
  end
# For items that are exempt from tax
  def without_tax
    ("#{@quantity} #{@name} at #{@price}")
  end
#For regular items that tax is applied to
  def sales_tax
    ("#{@price}").to_i * 0.10 + ("#{@price}").to_i
  end
#For items that have been imported
  def import_tax
    ("#{@price}").to_i * 0.15 + ("#{@price}").to_i
  end

end
