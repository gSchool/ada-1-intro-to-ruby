require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Product Class" do

  let(:product) { Product.new("Dumplings", 357)}

  it "can be instantiated" do
    expect(product).wont_be_nil
  end

  describe "name methods" do
    it "has a name method" do
      expect(product).must_respond_to :name
    end

    it "will let name will return a string" do
      expect(product.name).must_be_instance_of String
    end

    it "will return the string passed in via the constructor" do
      expect(product.name).must_equal "Dumplings"
    end

    it "allows the user to change name with name=" do
      product.name = "Pasta Salad"

      expect(product.name).must_be_instance_of String
      expect(product.name).must_equal "Pasta Salad"
    end
  end

  describe "quantity_in_stock method" do
    it "has a quantity_in_stock method" do
      expect(product).must_respond_to :quantity_in_stock
    end

    it "will return an integer" do
      expect(product.quantity_in_stock).must_be_instance_of Integer
    end

    it "will return the string passed in via the constructor" do
      expect(product.quantity_in_stock).must_equal 357
    end

    it "allows the user to change quantity_in_stock with quantity_in_stock=" do
      product.quantity_in_stock = 42

      expect(product.quantity_in_stock).must_be_instance_of Integer
      expect(product.quantity_in_stock).must_equal 42
    end
  end

  describe "available? method" do
    it "has an available? method" do
      expect(product).must_respond_to :available?
    end

    it "will return true if quantity_in_stock is positive" do
      product.quantity_in_stock = 42
      expect(product.available?).must_equal true
    end

    it "will return false if quantity_in_stock is 0" do
      product.quantity_in_stock = 0
      expect(product.available?).must_equal false
    end
  end  

  describe "sell method" do
    it "will reduce quantity in stock" do
      product.sell(5)
      expect(product.quantity_in_stock).must_equal (357 - 5)

      product.sell(3)
      expect(product.quantity_in_stock).must_equal (357 - 8)
    end

    it "will increase quantity_sold" do
      product.sell(8)
      expect(product.quantity_sold).must_equal 8

      product.sell(2)
      expect(product.quantity_sold).must_equal 10
    end
end
