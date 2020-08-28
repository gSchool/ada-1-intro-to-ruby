require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

def solution(words)
  return words.map { |word| word.upcase}
end

describe "formatted-names" do
  it "will return an empty array if given an empty hash" do
    students = {}
    answer = shouted_greetings(students)

    expect(answer.length).must_equal 0
  end

  describe "using sample input" do 
    it "will transform the sample input into an array of length 3" do
      words = ['hello', 'howdy', 'hey there']

      answer = shouted_greetings(words)
      expect(answer.length).must_equal 3
    end

    it "will return words in all upcase" do
      words = ['hello', 'howdy', 'hey there']


      answer = shouted_greetings(words)
      correct_solution = solution(words)

      answer.each_with_index do |word, index|
        expect(word).must_equal correct_solution[index]
      end
    end
  end
end
