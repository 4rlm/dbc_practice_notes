class Dancer
    attr_accessor :name, :age, :gender, :card_array
    def initialize(name, age, gender)
        @name = name
        @age = age
        @gender = gender
        @genders = ["Agender", "Androgyne", "Androgynous", "Bigender", "Cis", "Cisgender", "Cis Female", "Cis Male", "Cis Man", "Cis Woman", "Cisgender Female", "Cisgender Male", "Cisgender Man", "Cisgender Woman", "Female to Male", "FTM", "Gender Fluid", "Gender Nonconforming", "Gender Questioning", "Gender Variant", "Genderqueer", "Intersex", "Male to Female", "MTF", "Neither", "Neutrois", "Non-binary", "Other", "Pangender", "Trans", "Trans*", "Trans Female", "Trans* Female", "Trans Male", "Trans* Male", "Trans Man", "Trans* Man", "Trans Person", "Trans* Person", "Trans Woman", "Trans* Woman", "Transfeminine", "Transgender", "Transgender Female", "Transgender Male", "Transgender Man", "Transgender Person", "Transgender Woman", "Transmasculine", "Transsexual", "Transsexual Female", "Transsexual Male", "Transsexual Man", "Transsexual Person", "Transsexual Woman", "Two-Spirit"]
    end

    def intro
        "#{@age} year old #{@gender} dancer named #{@name}"
    end

    def change(name, age, gender)
        @name = name
        @age = age
        @gender = gender
        "Oh, wait.  Actually it got a sex, age, and name change.  Now it's #{@age} year old #{@gender} dancer named #{@name}"
    end

    def partner(p_name)
        "#{@name} is partnered with #{p_name}."
    end

    def periolet(style)
        "#{@name} is doing a beautiful #{style} periolet."
    end

    def card(card_array)
        @card_array = card_array
        "#{@name} is now changing partners with #{@card_array[0]}, then with #{@card_array[1]}"
    end

    def switch
        "Oh my god!  #{@name} just dropped #{@card_array[1]}"
    end

    def angry
        "#{@card_array[1]} looks really pissed off!  OMG!  He just punched #{@name} in the face!"
    end

    def sex_change
        new_gender = @genders.sample
        "All the dancers just changed their genders to #{new_gender}."
    end

end

misty = Dancer.new("Misty", 24, "female")
p misty.intro
p misty.change("Steve", 87, "trans-gender")
p misty.partner("Frank")
p misty.periolet("twist")
p misty.card(["Ginger the Stripper", "Bruce the Boxer"])
p misty.switch
p misty.angry
p misty.sex_change
