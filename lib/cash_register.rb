
class CashRegister

    attr_accessor :items, :discount, :total, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, amount, qauntity=1)
        self.total += amount * qauntity
        qauntity.times do
            items << title
        end
        self.last_transaction = amount * qauntity

    end

    def apply_discount
        if discount != 0
            self.total = (total * ((100 - discount.to_f)/100)).to_i
            p "After the discount, the total comes to $800."
        else
            p "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end
end