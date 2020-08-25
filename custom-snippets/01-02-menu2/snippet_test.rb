require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Test Suite" do
  describe "average_price" do
    it "will calculate the average price of 1 item" do
      menu = [
        {
          name: 'beet salad',
          price: 6.75,
          allergens: ['nuts']
        }
      ]

      average = average_price(menu)

      expect(average).must_be_close_to 6.75, 0.1 
    end

    it "can average 3 items" do
      menu = [
        {
          name: 'beet salad',
          price: 6.75,
          allergens: ['nuts']
        },
        {
          name: 'quiche',
          price: 10.00,
          allergens: ['gluten', 'dairy']
        },
        {
          name: 'molten chocolate cake',
          price: 8.50,
          allergens: []
        }
      ]

      average = average_price(menu)

      expect(average).must_be_close_to ( (6.75 + 10.0 + 8.5) / 3.0), 0.1
    end
  end
end
