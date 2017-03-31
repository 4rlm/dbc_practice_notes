h = {}
h['a'] = 'apples'
h[:a] = 'asparagus'

my_var = 'a'
other_var = 'b'

h[my_var]

h[other_var] = 'bees'

#Prep: be ready to create new folder and files on desktop, git init, then have terminal ready in that folder.
#pseudocode!
#git demo
#logic and hash iteration, ex. find toy with longest length, or with most vowels, etc.
#rspec: 2 methods
# don't build anything that is not asked

class Dog
  # Be careful not to add anything in attr_reader, attr_accessor that is not necessary, such as the hash, or hungry.
  attr_reader(:breed)
  attr_accessor(:name)

  def initialize(name, breed)
    @name = name
    @breed = breed
    @hungry = false
    @toys = {}
  end

  def eat_food
    @hungry = false
  end

  def go_for_walk
    @hungry = true
  end

  def find_in_dirt(item)
    if item.length.odd?
      @toys[item] = "buried"
    else
      @toys[item] = "lost"
      go_for_walk
    end
  end

  def item_reporter
    puts "Looked for #{@toys.length} items."
    @toys.each do |k,v|
      puts "The #{k} was #{v}."
    end

    #Lookedd for 5 items and they are
    #stick was found
  end
end




# create a method called find_in_dirt(item)
#if the item has an odd amount of letters add it to the toys with a marker of buried
#if the item has an even amount of letters add it to the toys wiht a marker of lost

#create a method called eat_food and go_for_walk; idea is that eat_food changes the dog to not be hungry while go_for_walk changes it to be hungry (think state)


my_dog = Dog.new('Ace', 'Shepard')
p my_dog.name #=> 'Ace'
p my_dog.breed #=> 'Shepard'
my_dog.name=('Todo')
p my_dog.name #-> 'Todo'

#report
#Lookedd for 5 items and they are
#stick was found
my_dog.find_in_dirt('doll')
my_dog.find_in_dirt('ball')
my_dog.find_in_dirt('bone')
my_dog.find_in_dirt('sock')
my_dog.find_in_dirt('stick')

my_dog.item_reporter
