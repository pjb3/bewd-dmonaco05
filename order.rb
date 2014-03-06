class Product
  attr_accessor :name, :price

  def initialize(attrs = {})
    attrs.each do |attr, value|
      send("#{attr}=", value)
    end
  end

  def self.add(info)
    @products ||= []
    @products << Product.new(info)
  end

  def self.find(name)
    @products ||= []
    @products.find(ifnone=nil) { |product| product.name == name }
  end
end

class LineItem
  def initialize(quantity, name)
    @quantity = quantity
    @product = Product.find(name)
  end

  def calc_subtotal
    @quantity * @product.price
  end
end

class Order
  def initialize (rates = {tax_rate: 0.05})
    @tax_rate = rates[:tax_rate] + 1
  end

  def add (quantity, name)
    @line_items ||= []
    @line_items << LineItem.new(quantity, name)
  end

  def total_price
    @total = @line_items.reduce(0){ |sum, e| sum += e.calc_subtotal }
    (@total * @tax_rate).round(2)
  end
end
