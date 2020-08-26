require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Test Suite" do
  describe "lengths" do
    it "will return an empty array if given an empty array" do
      list = []

      expect(lengths(list).length).must_equal 0
    end

    it "will return an array of 1 length for a 1-element array" do
      list = ["pasta"]
      list_of_lengths = lengths(list)

      expect(list_of_lengths.length).must_equal 1
      list.each_with_index do |string, index|
        expect(string.length).must_equal list_of_lengths[index]
      end
    end

    it "will return an array of 1 length for a 1-element array" do
      list = ["pasta", "a", "", "elephant"]
      list_of_lengths = lengths(list)

      expect(list_of_lengths.length).must_equal 1
      list.each_with_index do |string, index|
        expect(string.length).must_equal list_of_lengths[index]
      end
    end
  end
end
