

class Student

    attr_accessor :first_name
    @@all = []
  def initialize(first_name)
    @first_name = first_name
      @@all << self
  end


  def self.all
    @@all
  end

def add_boating_test(name,status,instructor)
  BoatingTest.new(name,status,instructor,self)
end

def self.find_student(first_name)
  Student.all.find{|student| student.first_name == first_name}
end

def grade_percentage
  has_passed = BoatingTest.all.count do |test|
      test.status == 'passed'
    end

    has_passed / BoatingTest.all.count.to_f

  # * Student#grade_percentage should return the percentage of tests that the student has passed,
  #a Float (so if a student has passed 3 / 9 tests that they've taken,
  #this method should return the Float `33.33`)
end
end
