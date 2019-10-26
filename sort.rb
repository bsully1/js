class Person
    attr_reader :age, :name
    def initialize(name, age)
      @name = name
      @age = age
    end

end

brandon = Person.new("Brandon", 29)
ken = Person.new("Ken", 28)
eric = Person.new("Eric", 29)
cindy = Person.new("Cindy", 14)

people = [brandon, ken, eric, cindy]

def sort_people(people, comparer)
  people.sort do |x, y|
    x.name <=> y.name
     comparer.call(x) <=> comparer.call(y)
  end
end

# grab_age = lambda do |person|
#     person.age
# end


sorted_people = sort_people(people, 
  lambda { |person| person.age})

puts sorted_people.inspect

