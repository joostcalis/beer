class Bartender < Person
  def initialize(name, age)
    super # Call the initialize(name) method in the super class (Person)
    @customers = []
  end
​
  def greet(customer)
    super
    @customers << customer
  end

  def is_old_enough(customer)
    if customer.old_enough == false
      puts "you're not old enough"
    end



​
  def serve(customer)
    say "There ya go.."
    customer.take_beer(Beer.new)
  end
end
