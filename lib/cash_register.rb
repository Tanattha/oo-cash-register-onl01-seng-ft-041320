class CashRegister
    attr_accessor :total, :discount, :items, :last_tran

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_tran = last_tran
    end

    def add_item(title, price, quantity=1)
        @total += price * quantity
        
        quantity.times do
            @items << title
        end
        @last_tran = price * quantity
    end

    def apply_discount
      if discount != 0
        @total = (total - ((total * discount) / 100)).to_i
        "After the discount, the total comes to $#{@total}."
    else
        "There is no discount to apply."
    end
end

    def void_last_transaction
       @total = total - last_tran 
    end
end







   
   