require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


describe "Product Class" do
  let (:product) { Product.new("Ada's Toothwhitener", 30) }

  describe "Initialize Method" do
    it "can be initialized with \"Ada's Tooth Whitener" do
      expect(product).wont_be_nil
    end
  end

  describe "name reader and writer" do
    it "has a name reader" do
      expect(product.name).must_equal "Ada's Toothwhitener"
    end

    it "has a name= writer" do
      product.name = "Ada's amazing dental floss"

      expect(product.name).must_equal "Ada's amazing dental floss"
    end
  end

  describe "quantity_in_stock reader and writer" do
    it "has a quantity_in_stock reader" do
      expect(product.quantity_in_stock).must_equal 30
    end

    it "has a quantity_in_stock writer" do
      product.quantity_in_stock = 12
      expect(product.quantity_in_stock).must_equal 12
    end
  end

  describe "quantity_sold and available?" do
    it "will return 0 initially for quantity sold" do
      expect(product.quantity_sold).must_equal 0
    end

    it "has a sell method" do
      expect(product).must_respond_to :sell
    end

    it "will update the quantity sold based off selling" do
      product.sell 10

      expect(product.quantity_sold).must_equal 10

      product.sell 1

      expect(product.quantity_sold).must_equal 11

      product.sell 0
      expect(product.quantity_sold).must_equal 11
    end
  end

  describe "available?" do
    it "is available when quantity_in_stock is positive" do
      expect(product.available?).must_equal true
    end

    it "is available when quantity_in_stock is 0" do
      product.quantity_in_stock = 0
      expect(product.available?).must_equal false
    end
  end
end