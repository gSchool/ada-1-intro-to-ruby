require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Test Suite" do
  describe "list of allergens" do
    it "will return the allergens for 1 menu item" do
      menu = [
        {
          name: 'beet salad',
          price: 6.75,
          allergens: ['nuts']
        }
      ]

      allergen_list = allergens(menu)

      expect(allergen_list.sort).must_equal ["nuts"]
    end

    it "can return the allergens for 3 items" do
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

      allergen_list = allergens(menu)

      expect(allergen_list.sort).must_equal ["dairy", "gluten", "nuts"]
    end
  end
end
