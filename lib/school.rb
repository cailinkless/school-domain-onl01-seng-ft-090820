# code here!

#School
  ##add_student
    #is able to add a student (FAILED - 2)
    #is able to add multiple students to a class (grade) (FAILED - 3)
    #is able to add students to different grades (FAILED - 4)
  ##grade
    #is able to retreive students from a grade (FAILED - 5)
  ##sort
    #is able to sort the students (FAILED - 6)

require 'pry'

class School

    attr_accessor :roster 

    def initialize(roster)
        @roster = {}
    end

    def add_student(name, grade)
        if @roster.include? grade
            roster[grade] << name
        else
        roster[grade] = []
        roster[grade] << name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_roster = { }
        roster.collect do |grade, names|
            sorted_roster[grade] = names.sort
        end
        #end
        Hash[sorted_roster.sort]
    end

end