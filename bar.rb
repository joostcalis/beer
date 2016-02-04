require './personclass.rb'
require './bartenderclass.rb'
require './beerclass.rb'
require './customerclass.rb'

the_bartender = Bartender.new("Joe", 25)
captain_jack = Customer.new("Cpt. Jack", 16)

the_bartender.greet(captain_jack)
the_bartender.is_old_enough?(captain_jack)
the_bartender.serve(captain_jack)

# Captain Jack can drink while he has beer
while captain_jack.has_beer?
  captain_jack.drink!
  sleep 1
end

captain_jack.drink!
the_bartender.serve(captain_jack)
