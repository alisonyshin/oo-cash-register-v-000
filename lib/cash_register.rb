require 'pry'
class CashRegister

#Add items of varying quantities and prices
#Calculate discounts
#Keep track of what's been added to it
#Void the last transaction

attr_accessor :total, :discount, :items

  def initialize(employee_discount = 0)
    @total = 0 
    @discount = employee_discount
    @items_prices = {}
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    self.total = self.total + price*quantity
    self.items_prices[title] = price*quantity
  end
  
  def apply_discount

    if self.discount == 0
      "There is no discount to apply."
    else
      self.total = self.total*(1-self.discount/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total = self.total - self.items_prices.values.last
    self.items_prices.delete(self.items_prices.keys.last)
  end
end


