class Bartender < Person
  def initialize(name)
    super # Call the initialize(name) method in the super class (Person)
    @customers = []
  end
​
  def greet(customer)
    super
    @customers << customer
  end
  def old_enough(age)
​
  def serve(customer)
    say "There ya go.."
    customer.take_beer(Beer.new)
  end
end
