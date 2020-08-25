require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


describe "Test Suite" do
  describe "menu_addition" do
    it "will have 5 items" do
      expect(menu_addition.length).must_equal 5
    end

    it "will have name, price and allergens in each element" do
      # Arrange
      keys = [:name, :price, :allergens].sort
      # Act
      list = menu_addition

      # Assert
      list.each do |item|
        expect(item.keys.sort).must_equal keys
      end
    end
  end
end
