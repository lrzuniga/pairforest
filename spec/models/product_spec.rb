require 'spec_helper'

  describe Product do

    let!(:product) {Product.create(:name => "Laptop", :description => "Crucial to developers", price_in_cents: 120099)}

    context "Valid" do
    it "should have a valid factory" do
      product.should be_valid
      end
    end
    
    context "Invalid" do
        it "should be invalid with a non-integer price" do
          product.price_in_cents = 14.5
          product.should_not be_valid
        end

        it "should be invalid with no name" do
          product.name = nil
          product.should_not be_valid
        end

        it "should be invalid with no description" do
          product.description = nil
          product.should_not be_valid
        end

    end
  
end

