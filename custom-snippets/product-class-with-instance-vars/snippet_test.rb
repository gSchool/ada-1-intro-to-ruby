require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Product Class" do

  let(:product) { Product.new}

  it "can be instantiated" do
    expect(product).wont_be_nil
  end

  describe "name methods" do
    it "has a name method" do
      expect(product).must_respond_to :name
    end

    it "will let name will return a string" do

      name_data_type = product.name.class == String || product.name.nil?

      expect(name_data_type).must_equal true
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
      quantity_in_stock_data_type = product.quantity_in_stock.class == Integer || 
        product.quantity_in_stock.nil?
      expect(quantity_in_stock_data_type).must_equal true
    end

    it "allows the user to change quantity_in_stock with quantity_in_stock=" do
      product.quantity_in_stock = 42

      expect(quantity_in_stock).must_be_instance_of Integer
      expect(quantity_in_stock).must_equal 42
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

  describe "quantity_sold" do
    it "starts with 0 sold and a reader method" do
      expect(product.quantity_sold).must_equal 0
    end
  end

  describe "sell" do
    it "has a sell method" do
      expect(product).must_respond_to :sell
    end

    it "will increase the quantity_sold" do
      product.sell(5)
      expect(product.quantity_sold).must_equal 5
      
      product.sell(3)
      expect(product.quantity_sold).must_equal 8
    end
  end
end
