require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

def solution(first, second)
  answer = []
  first.each_with_index do |name, index|
    answer << [first, second[index]]
  end

  return answer
end

describe "Test Suite" do
  describe "lengths" do
    it "will return an empty array if given two empty arrays" do
      first = []
      second = []
      answer = arrays_of_arrays(first, second)

      expect(answer.length).must_equal 0
    end

    it "will return an array of 1 length for two 1-element arrays" do
      first = ["Charles"]
      second = ["TA"]
      answer = arrays_of_arrays(first, second)

      expect(answer.length).must_equal 1
      first.each_with_index do |first_string, index|
        expect(answer[index][0]).must_equal first_string
        expect(answer[index][1]).must_equal second[index]
      end
    end

    it "will return an array of 3 length for two 3-element arrays" do
      first = ["Charles", "Simon", "Dan"]
      second = ["TA", "Lead Instructor", "Former Lead Instructor"]
      answer = arrays_of_arrays(first, second)

      expect(answer.length).must_equal 3
      first.each_with_index do |first_string, index|
        expect(answer[index][0]).must_equal first_string
        expect(answer[index][1]).must_equal second[index]
      end
    end 
  end
end
