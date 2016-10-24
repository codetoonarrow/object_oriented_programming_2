require_relative 'item'

class Receipt < Item


  def without_tax
    ("#{@quantity} #{@name}: #{@price}")
  end

  def sales_tax
    print "#{@quantity} #{@name}" + " "
    (@price * 0.10 + @price).round(2)
  end

  def import_tax
      print "#{@quantity} #{@name} : "
    (@price * 0.15 + @price).round(2)
  end
  def total_tax
    print "Total tax : "
    (@price * 0.10).round(1)
  end
end

#Prints out the results to the terminal

puts "Example one"
puts "-" * 30
puts "-" * 30
book = Receipt.new(1,"Book", 12.49)
music_cd = Receipt.new(1,"Music CD", 14.99)
chocolate_bar = Receipt.new(1,"Chocolate bar", 0.85)
puts book.without_tax
puts music_cd.without_tax
puts chocolate_bar.without_tax
puts "-" * 30
puts "Output :"
puts "-" * 30
puts music_cd.total_tax
puts "-" * 30

puts "Example two"
puts "-" * 30
puts "-" * 30
imported_chocolates = Receipt.new(1, "Imported box of chocolates", 10.00)
imported_perfume = Receipt.new(1,"Imported bottle of perfume", 47.00)
puts imported_chocolates.import_tax
puts imported_perfume.import_tax
puts "-" * 30

puts "Example three"
puts "-" * 30
puts "-" * 30

imported_perfume_two = Receipt.new(1, "Imported bottle of perfume", 27.99)
regular_perfume = Receipt.new(1, "Imported bottle of perfume", 18.99)
headache_pills = Receipt.new(1, "Pack of Headache pills", 9.75)
imported_chocolates_two = Receipt.new(1, "Imported chocolates", 11.25)
puts imported_perfume_two.import_tax
puts regular_perfume.sales_tax
puts headache_pills.without_tax
puts imported_chocolates.import_tax
