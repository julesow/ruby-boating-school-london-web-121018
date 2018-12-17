class BoatingTest

attr_accessor :name,:status,:instructor,:student

    @@all = []
  def initialize(name,status,instructor,student)
    @student = student
    @name = name
    @status = status
    @instructor = instructor
    @@all << self
  end


  def self.all
    @@all
  end

end
