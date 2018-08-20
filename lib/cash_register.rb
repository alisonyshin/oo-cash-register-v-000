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
    @items = {}
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    self.total = self.total + price*quantity
    self.items[title] = price*quantity
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
    self.items.keys
  end
  
  def void_last_transaction
    self.total = self.total - self.items.values.last
    self.items.delete(self.items.keys.last)
  end
end


