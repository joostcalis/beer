class Bartender < Person
  def initialize(name, age)
    super # Call the initialize(name) method in the super class (Person)
    @customers = []
  end

  def is_old_enough?(customer)
     unless customer.old_enough?
     puts "Sorry ur not old enough"
    end
  end

  def greet(customer)
    super
    @customers << customer
  end

  def serve(customer)
    say "There ya go.."
    customer.take_beer(Beer.new)
  end
end
