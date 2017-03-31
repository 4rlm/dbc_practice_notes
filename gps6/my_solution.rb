# Virus Predictor

# I worked on this challenge [with: Mentor Aji ].
# We spent [1] hours on this challenge, but I spent about 3 hours in total.

# EXPLANATION OF require_relative
# Allows other files in dir to be used as if they were all the same file.  Different than require, which is for resources outside of dir.

require_relative 'state_data'

class VirusPredictor

# Creates instance variables, which can be accessed inside of methods without need to pass them as arguments.  Global scope within class only.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Calls predicted_deaths and speed_of_spread methods and prints results.
  def virus_effects
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

# Methods below private can not be accessed by public.
  private

# predicted deaths is solely based on population density
  def predicted_deaths
    if @population_density >= 200
      death_calc(0.4)
    elsif @population_density >= 150
      death_calc(0.3)
    elsif @population_density >= 100
      death_calc(0.2)
    elsif @population_density >= 50
      death_calc(0.1)
    else
      death_calc(0.05)
    end
  end

# We are still perfecting our formula here. The speed is also affected
# by additional factors we haven't added into this functionality.
  def speed_of_spread #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
  end

# Calculator to make code more DRY.
  def death_calc(int)
    (@population * int).floor
  end

end

#=======================================================================
# Driver Code

STATE_DATA.each do |state, value|
  target_state = VirusPredictor.new(state, value[:population_density], value[:population])
  target_state.virus_effects
end


#=======================================================================
# Reflection Section
# There is a hash inside a hash in STATE_DATA
# require_relative mentioned above.
# Iterated through the hash above in driver code.
# Nothing stood out about the variables, except that they were not needed as we could use instance variables instead.
# I enjoyed all concepts.  It was good practice to work with a hash in a hash and the rspec, which I did as a bonus was different than I've done before.
