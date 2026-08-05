class Person
    @@count = 0
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
        @@count += 1
    end
    def self.how_many
        @@count
    end
end
p = Person.new("Valentine", 21)
p2 = Person.new("Vale", 20)
puts Person.how_many

