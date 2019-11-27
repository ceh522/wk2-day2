class River

  attr_reader :name
  attr_accessor :fishes

  # def initialize(name, fishes)   could put as fishes = [] in initialize - array - so don't have to be fishes in river - those thet will be, should be in array
    @name = name
    @fishes = fishes
  end


  def fish_count
    # return @fishes.length  can do .size
  end

  def lose_fish(fish)
    @fishes.delete(fish)
    return @fishes.length
  end

#if fish had same name, would delete all fish - have to change method, have differently named fish - do get fish then test fish.class in specs - to make sure a fish iin array, not nil 

# # in solution
#   def get_fish
#     return @fishes.pop
#   end

end
