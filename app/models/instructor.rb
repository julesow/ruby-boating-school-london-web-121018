

 class Instructor

attr_accessor :name

     @@all = []
   def initialize(name)
     @name = name
       @@all << self
   end


   def self.all
     @@all
   end

def pass_student(student,test_name)
  has_student = BoatingTest.all.find do |test|
    test.student == student && test.name == test_name


  # If there is a BoatingTest whose name and student name match the names passed in,
  #this method should update that BoatingTest status to 'passed'.
if has_student
  has_student.status = 'passed'

else
  #If there is no matching test, this method should create a test with a student with that
   # name, that boat test name, and the status 'passed'.
   BoatingTest.new(test_name,'passed',self,student)
end
binding.pry

end
end
 end
