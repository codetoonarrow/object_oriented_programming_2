class Item

  # attr_writer :chocolate :perfume :pills


  def initialize(quantity, name, price)
    @quantity = quantity
    @name     = name
    @price    = price
  end

  def own
    ("#{@quantity} #{@name} at #{@price}")
  end

  def basic
    ("#{@price}").to_f * 0.10 + ("#{@price}").to_f
        end

  def import
    ("#{@price}").to_f * 0.05 + ("#{@price}").to_f
  end
#Example one
book = Item.new(1,"Book", 12.49)
puts book.own
music_cd = Item.new(1,"Music CD", 14.99)
puts music_cd.own
chocolate_bar = Item.new(1,"Chocolate bar", 0.85)
puts chocolate_bar.own


end

class Receipt < Item

  def own
    ("#{@quantity} #{@name}: #{@price}")
  end

  def basic
    ("#{@price}").to_f * 0.10 + ("#{@price}").to_f
  end

        def import
          ("#{@price}").to_f * 0.05 + ("#{@price}").to_f
        end

        puts "-------------------------"
end

book = Receipt.new(1,"Book", 12.49)
puts book.own
music_cd = Receipt.new(1,"Music CD", 14.99)
puts music_cd.basic
chocolate_bar = Receipt.new(1,"Chocolate bar", 0.85)
puts chocolate_bar.own
