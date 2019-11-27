class Bear

  attr_reader :name, :type

  def initialize(name, type)     #makes private instance variables public
    @name = name
    @type = type
    @stomach = []                #only in class - not otherwise visible - only see what's in there via @empty_stomach/ @food method
  end                            #like with real bear - can't directly see what's in stomach (would come up as undefined local variale)


  def empty_stomach
    return @stomach
  end
#in solution, called @stomach, @food so made sense to do:

# def food_count
#   return @food.size
# end

  def roar
    return "ROAR!!!"
  end

  def gain_fish (fish)
    return @stomach << fish
  end

# solution
# def take_fish_from_river(river)
#   fish = river.get_fish()          #refering to the fish taken from river
#   @food << fish if !fish.nil?      #only add to stomach if there was a fish in the river - don't add a nil to the array
# end

# passing in method from river

end
