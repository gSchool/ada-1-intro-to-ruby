require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

def solution(characters)
  answer = []
  characters.each_with_index do |character, index|
    answer << "#{character[:name]}'s specialty is to #{character[:specialty].upcase}"
  end

  return answer
end

describe "Test Suite" do
  describe "lengths" do
    it "will return an empty array if given two empty arrays" do
      characters = []
      answer = specialities(characters)

      expect(answer.length).must_equal 0
    end

    it "will return an array of 1 length for two 1-element arrays" do
      characters = [
        { name: "Al", specialty: "Toolman"},
      ]
      answer = specialities(characters)

      expect(answer.length).must_equal 1
      characters.each_with_index do |name, index|
        expect(answer[index]).must_equal "#{characters[:name]}'s specialty is to #{characters[:specialty].upcase}"
      end
    end

    it "will return an array of 3 length for two 3-element arrays" do
      characters = [
        { name: "Simon", specialty: "Lead Instructor"},
        { name: "Dan", specialty: "Former Lead Instructor"},
        { name: "Bethany", specialty: "Head Honcho"},
      ]
      answer = specialities(characters)
      solution = solution(characters)

      expect(answer.length).must_equal 3
      answer.each_with_index do |ans, index|
        expect(ans).must_equal solution[index]
      end
    end 
  end
end
