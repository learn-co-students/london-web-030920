class Instructor

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    found_test = BoatingTest.all.find{|test| test.test_name == test_name && test.student.first_name == student.first_name}
    if found_test
      found_test.test_status = "passed"
    else
      found_test = BoatingTest.new(student, test_name, "passed", self)
    end
    found_test
  end

  def fail_student(student, test_name)
    found_test = BoatingTest.all.find{|test| test.test_name == test_name && test.student.first_name == student.first_name}
    if found_test
      found_test.test_status = "failed"
    else
      found_test = BoatingTest.new(student, test_name, "failed", self)
    end
    found_test
  end

end
