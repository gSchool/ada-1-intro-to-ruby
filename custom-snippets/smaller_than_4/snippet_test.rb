require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Test Suite" do
  describe "lengths" do
    it "will return an empty array if given an empty array" do
      list = []

      expect(smaller_than_4(list).length).must_equal 0
    end

    it "will return an array of 0 length for a 1-element array with ['pasta']" do
      list = ["pasta"]
      list_of_small_strings = smaller_than_4(list)

      expect(list_of_small_strings.length).must_equal 0
    end

    it "will return an array of 2 length for ['pasta', 'a', "", 'elephant']" do
      list = ["pasta", "a", "", "elephant"]
      list_of_small_strings = smaller_than_4(list)

      expect(list_of_small_strings.length).must_equal 2
      expect(list_of_small_strings[0]).must_equal "a"
      expect(list_of_small_strings[1]).must_equal ""
    end
  end
end
