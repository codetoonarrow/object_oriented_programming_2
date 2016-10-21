#Created a parent class of Person which both student and Instructor inherit
class Person

  def initialize(name)
    @name = name
  end

end


# Create class called Student.
class Student < Person

#Made unique greeting in method
  def learn
    puts "I'm learnding!"
    
  end

end

#Create class called Instructor
class Instructor <Person

#Made unique greeting in method
  def teach
  puts "Everything in ruby is an object"
  end

end

luke = Student.new("Luke")
bob = Instructor.new("Bob")
