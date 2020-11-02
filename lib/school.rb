# code here!

class School

    attr_accessor :roster, :add_student, :grade, :name
    
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []  #pipes are or/equals? or wuuuut
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        alpha_roster = {} 
        @roster.collect do |grade, name|
            alpha_roster[grade] = name.sort
        end
        alpha_roster
    end
end