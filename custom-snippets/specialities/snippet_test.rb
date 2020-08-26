require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

def solution(names, specialities)
  answer = []
  names.each_with_index do |name, index|
    answer << "#{name}'s specialty is to #{specialities[index].upcase}"
  end

  return answer
end

describe "Test Suite" do
  describe "lengths" do
    it "will return an empty array if given two empty arrays" do
      names = []
      specialities = []
      answer = combine_lists(names, specialities)

      expect(answer.length).must_equal 0
    end

    it "will return an array of 1 length for two 1-element arrays" do
      names = ["Charles"]
      specialities = ["TA"]
      answer = combine_lists(names, specialities)

      expect(answer.length).must_equal 1
      names.each_with_index do |name, index|
        expect(answer[index]).must_equal "#{name}'s specialty is to #{specialities[index].upcase}"
      end
    end

    it "will return an array of 3 length for two 3-element arrays" do
      names = ["Charles", "Simon", "Dan"]
      specialities = ["TA", "Lead Instructor", "Former Lead Instructor"]
      answer = combine_lists(names, specialities)
      solution = solution(names, specialities)

      expect(answer.length).must_equal 3
      answer.each_with_index do |ans, index|
        expect(ans).must_equal solution[index]
      end
    end 
  end
end
