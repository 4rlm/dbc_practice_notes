# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
    
    def initialize(state_of_origin, population_density, population)
        @state = state_of_origin
        @population = population
        @population_density = population_density
    end

    def virus_effects
        predicted_deaths
        speed_of_spread
    end

    private

    def predicted_deaths
        # predicted deaths is solely based on population density
        if pop_density(200)
            number_of_deaths = death_calc(0.4)
        elsif pop_density(150)
            number_of_deaths = death_calc(0.3)
        elsif pop_density(100)
            number_of_deaths = death_calc(0.2)
        elsif pop_density(50)
            number_of_deaths = death_calc(0.1)
        else
            number_of_deaths = death_calc(0.05)
        end
        print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    end


    # def speed_of_spread(@population_density, @state)
    def speed_of_spread #in months
        # We are still perfecting our formula here. The speed is also affected
        # by additional factors we haven't added into this functionality.
        speed = 0.0

        if pop_density(200)
            speed += 0.5
        elsif pop_density(150)
            speed += 1
        elsif pop_density(100)
            speed += 1.5
        elsif pop_density(50)
            speed += 2
        else
            speed += 2.5
        end
        puts " and will spread across the state in #{speed} months.\n\n"
    end

    def pop_density(int)
        factor = @population_density >= int
    end

    def death_calc(int)
        number_of_deaths = (@population * int).floor
    end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section


STATE_DATA.each do |state, value|
    target_state = VirusPredictor.new("#{state}", STATE_DATA["#{state}"][:population_density], STATE_DATA["#{state}"][:population])
    target_state.virus_effects
end
