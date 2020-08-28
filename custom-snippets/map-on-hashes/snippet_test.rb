require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

def solution(students)
  return students.map do |key, value|
    { key => value.upcase }
  end
end

describe "formatted-names" do
  it "will return an empty array if given an empty hash" do
    students = {}
    answer = format_names(students)

    expect(answer.length).must_equal 0
  end

  describe "using sample input" do 
    it "will transform the sample input into an array of length 3" do
      students = {
        student_a: 'Dasher',
        student_b: 'Dancer',
        student_c: 'Prancer'
      }

      answer = format_names(students)
      expect(answer.length).must_equal 3
    end

    it "will have all the correct key-value pairs in the sample solution" do
      students = {
        student_a: 'Dasher',
        student_b: 'Dancer',
        student_c: 'Prancer'
      }

      answer = format_names(students)
      correct_solution = solution(students)

      answer.each do |hash|
        expect(correct_solution).must_include hash
      end
    end
  end
end
