require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Test Suite" do
  describe "even_or_odd" do
    it "will return an empty array if given an empty array" do
      list = []

      expect(even_or_odd(list).length).must_equal 0
    end

    it "will return an array of 1 length for a 1-element array" do
      list = [3]
      even_odds = even_or_odd(list)

      expect(even_odds.length).must_equal 1
      expect(even_odds.first.downcase).must_equal "odd"
    end

    it "will return an array of ['even'] for [2]" do
      list = [2]
      even_odds = even_or_odd(list)

      expect(even_odds.length).must_equal 1
      expect(even_odds.first.downcase).must_equal "even"
    end

    it "will return ['even', 'odd', 'even'] for [2, 3, 16]" do
      list = [2, 3, 16]
      even_odds = lengths(list)
      answer = ["even", "odd", "even"]

      expect(even_odds.length).must_equal 3
      even_odds.each_with_index do |string, index|
        expect(string).must_equal answer[index]
      end
    end
  end
end
