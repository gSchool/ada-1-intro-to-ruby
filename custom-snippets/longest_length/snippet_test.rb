require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Test Suite" do
  describe "longest length" do
    it "will return nil if given an empty array" do
      list = []

      expect(longest_length(list)).must_equal nil
    end

    it "will return 'pasta' for ['a', 'ada', 'pasta']" do
      list = ["a", "ada", "pasta"]

      expect(longest_length(list)).must_equal "pasta"
    end

    it "will return 'applesauce' for ['a', 'applesauce', 'ada', 'pasta']" do
      list = ["a", 'applesauce', "ada", "pasta"]

      expect(longest_length(list)).must_equal "applesauce"
    end
  end
end
