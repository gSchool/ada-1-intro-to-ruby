require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

# - `name`, the name of the product
# - `quantity_in_stock`, the number of that item available
# - `available?`, returns true if `quantity_in_stock` is greater than 0, and false otherwise.
describe "Product Class" do

  let(:product) { Product.new}

  it "can be instantiated" do
    expect(product).wont_be_nil
  end

  describe "name method" do
    it "has a name method" do
      expect(product).must_respond_to :name
    end

    it "name will return a string" do
      expect(product.name).must_be_instance_of String
    end
  end

  describe "quantity_in_stock method" do
    it "has a quantity_in_stock method" do
      expect(product).must_respond_to :quantity_in_stock
    end

    it "will return an integer" do
      expect(product.quantity_in_stock).must_be_instance_of Integer
    end
  end

  describe "available? method" do
    it "has an available? method" do
      expect(product).must_respond_to :available?
    end

    it "will return true if quantity_in_stock is positive" do
      expect(product.available?).must_equal(product.quantity_in_stock > 0)
    end
  end  
end
