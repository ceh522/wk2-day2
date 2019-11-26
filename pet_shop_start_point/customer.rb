class Customer

attr_reader :name, :cash

def initialize(name, cash)
  @name = name
  @cash = cash
end

# def name(name)
#   return @name
# end
#
# def cash (cash)
#   return @cash
# end

def add_cash(add_cash)
  @cash += add_cash
end

def remove_cash(remove_cash)
  @cash -= remove_cash
end







end
