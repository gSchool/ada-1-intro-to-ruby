require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./snippet.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Test Suite" do
  describe "list of allergens" do
    it "will find the price of the last item" do
      price = find_price("molten chocolate cake")
      expect(price).must_equal 8.5
    end

    it "can return the price of the 1st item" do
      price = find_price("beet salad")
      expect(price).must_equal 6.75
    end
  end
end
