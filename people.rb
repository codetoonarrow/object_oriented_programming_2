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
    puts "I get it! I'm learnding!"
# puts "Hi my name is #{name}"
  end

  def greeting
    puts "Hello my name is #{@name}"
  end

end

cristina = Student.new("Cristina")
cristina.learn
cristina.greeting
# cristina.teach => this doesn't work because it is an undefined method

#Create class called Instructor
class Instructor < Person

#Made unique greeting in method
  def teach
  puts "Everything in ruby is an object. My name is #{@name}"
  end

  def greeting
    "Hello my name is #{@name}"
  end

end

chris = Instructor.new("Chris")
chris.teach
chris.greeting
