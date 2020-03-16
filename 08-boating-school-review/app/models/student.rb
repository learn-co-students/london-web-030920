class Student

  @@all = []

  attr_reader :first_name

    def initialize(first_name)
      @first_name = first_name
      @@all << self
    end

    def self.all
      @@all
    end

    def add_boating_test(boating_test_name, boating_test_status, instructor)
      BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
    end

    def self.find_student(first_name)
      @@all.find{|student| student.first_name == first_name}
    end

    def tests
       # all the tests this student has done
      BoatingTest.all.select{|test| test.student == self}
    end

    def grade_percentage    
      passing_tests = tests.select{|test| test.test_status == "passed"}.length.to_f

      all_tests = tests.length.to_f
      passing_tests / all_tests * 100

    end

end
