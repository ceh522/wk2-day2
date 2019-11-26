class Customer

attr_reader :name, :cash
#pet a low level module - doesn't need others to function - doesn't talk t them
#if put array in attr reader, can still do methods to it - to change it

def initialize(name, cash)
  @name = name
  @cash = cash
  @pets = []
end

# def name(name)
#   return @name
# end
#
# def cash (cash)
#   return @cash
# end

def add_cash(add_cash)  #known as method signature
  @cash += add_cash
end

def remove_cash(remove_cash)
  @cash -= remove_cash
end

def pet_count
  return @pets.length         #or .size   .count
end

def add_pet(new_pet)
  @pets << new_pet            # or @pets.push(pet)
end

def get_total_value_of_pets()
  total = 0
  for pet in @pets            #pass pet into customer beforehand
    total += pet.price
    end
    return total
  end





end
