class Student
    def initialize (name, marks)
        @name = name
        @marks = marks
    end
    def passed
        if @marks >= 50
            puts "true"
        else 
            puts "false"
        end
    end
end

V = Student.new("Valentine", 60)
puts V.passed