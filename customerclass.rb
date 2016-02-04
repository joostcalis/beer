class Customer < Person
  def initialize(name = "anonymous")
    super # Call the initialize(name) method in the super class (Person)
    @beers_had = []
    @amount_drank = 0
  end
​
  def what_is_your_name
    if drunk?
      say "Hic!"
    else
      super
    end
  end
​
  def drunk? # ? returns True/False
    @amount_drank > 2000
  end
​
  def take_beer(beer)
    if has_beer?
      say "I still have beer!"
    else
      say "Cheers!"
      @beers_had << beer
    end
  end
