class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  attr_accessor :name
  attr_accessor :calories
  
  def healthy?
    return @calories <= 200
  end
  def delicious?
    return true
  end

end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
  end
  
  attr_accessor :flavor
  
  def name
    return "#{flavor} jelly bean"
  end
  
  def delicious?
    return (@flavor == "licorice") ? false : true
  end
end
